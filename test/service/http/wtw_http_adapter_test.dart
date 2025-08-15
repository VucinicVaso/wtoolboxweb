import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:wtoolboxweb/http_adapter/wtw_http_adapter.dart';
import 'package:wtoolboxweb/http_adapter/impl/wtw_http_adapter_impl.dart';

void main() {
  group('WTWHttpAdapter service test', () {
    WTWHttpAdapter? adapter;
    Map<String, dynamic>? token   = <String, dynamic>{};
    Map<String, dynamic>? payload = <String, dynamic>{};

    setUp(() {
      adapter = WTWHttpAdapterImpl();
      payload = { 'id': 1, 'name': 'John Doe', 'position': 'Assistant' };
    });

    test('HTTP POST token request', () async {
      dynamic data = await adapter!.post('https://webhook.site/token', {},  {});
      Map<String, dynamic>? result = jsonDecode(data);
      token = result;

      expect(result!['default_status'], 200);
    });

    test('HTTP POST request', () async {
      dynamic data = await adapter!.post('https://webhook.site/${token!['uuid']}', {},  payload);

      expect(data, token!['default_content']);
    });

    test('HTTP GET request', () async {
      dynamic data = await adapter!.get('https://webhook.site/token/${token!['uuid']}/request/latest/raw', { 'api-key': token!['uuid'] });
      Map<String, dynamic>? result = jsonDecode(data);

      expect(result, payload);
    });

  });
}