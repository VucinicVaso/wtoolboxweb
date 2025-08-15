import 'package:flutter/foundation.dart';

class WTWLogger {

  static void write(String? message) {
    if(kDebugMode) { print('-- $message'); }
  }

}