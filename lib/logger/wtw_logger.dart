import 'package:flutter/foundation.dart';

class WTWLogger {

  static write(String? message) {
    if(kDebugMode) { print('-- $message'); }
  }

}