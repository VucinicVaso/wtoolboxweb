import 'package:flutter_test/flutter_test.dart';
import 'package:wtoolboxweb/external/lib_encrypt.dart';
import 'package:wtoolboxweb/encryption/wtw_encryption.dart';
import 'package:wtoolboxweb/encryption/impl/wtw_encryption_impl.dart';

void main() {
  group('WTWEncryption service test', () {
    WTWEncryption? encryption;

    setUp(() {
      encryption = WTWEncryptionImpl(key: '1234567890123456'); // 16-char key for AES-128
    });

    test('initializes encryption correctly', () {
      expect(encryption!.getRawKey(), '1234567890123456');
      expect(encryption!.getEncryptKey(), isA<Key>());
      expect(encryption!.getIv(), isA<IV>());
      expect(encryption!.getEncrypter(), isA<Encrypter>());
    });

    test('encrypt and decrypt returns original value', () {
      const originalText = 'Hello, Encryption!';
      final encrypted = encryption!.encrypt(originalText);
      expect(encrypted, isNotNull);
      expect(encrypted, isNotEmpty);

      final decrypted = encryption!.decrypt(encrypted!);
      expect(decrypted, originalText);
    });

    test('set and get RawKey manually', () {
      encryption!.setRawKey('abcdefghijklmnop');

      expect(encryption!.getRawKey(), 'abcdefghijklmnop');
    });

    test('set and get EncryptKey manually', () {
      final key = Key.fromUtf8('abcdefghijklmnop');
      encryption!.setEncryptKey(key);

      expect(encryption!.getEncryptKey(), key);
    });

    test('set and get IV manually', () {
      final iv = IV.fromUtf8('1234567890123456');
      encryption!.setIv(iv);

      expect(encryption!.getIv(), iv);
    });

    test('set and get Encrypter manually', () {
      final enc = Encrypter(AES(Key.fromUtf8('abcdefghijklmnop')));
      encryption!.setEncrypter(enc);

      expect(encryption!.getEncrypter(), enc);
    });

  });
}