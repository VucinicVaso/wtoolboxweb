import 'dart:convert';
import '../../external/lib_getx.dart';
import '../../logger/wtw_logger.dart';
import '../../socket/wtw_socket.dart';
import '../wtw_message_broker.dart';
import '../wtw_message_broker_service.dart';

class WTWMessageBrokerServiceImpl extends WTWMessageBrokerService {

  @override
  void subscribe(WTWMessageBroker? broker) {
    if(brokers!.where((o) => o.getTitle() == broker!.getTitle()).isEmpty) {
      brokers!.add(broker!);
    }
  }

  @override
  void unsubscribe(String? title) {
    if(brokers!.where((o) => o.getTitle() == title).isNotEmpty) {
      brokers!.removeWhere((o) => o.getTitle() == title);
    }
  }

  @override
  void notifyBroker(Map<String, dynamic>? message) async {
    if(brokers!.where((o) => o.getTitle() == message!['header']['application']).isNotEmpty) {
      final broker = brokers!.firstWhere((o) => o.getTitle() == message!['header']['application']);
      broker.notify(message);
    }
  }

  @override
  Future<void> sendPending(List<Map<String, dynamic>>? messages) async {
    if(messages!.isEmpty) {
      WTWLogger.write('WTWMessageBrokerService.sendPending() 0 messages to send.');
    }

    if(messages.isNotEmpty) {
      if(Get.find<WTWSocket>().connected == false) {
        WTWLogger.write('WTWMessageBrokerService.sendPending() error: WTSocket connection error.');
      }
      if(Get.find<WTWSocket>().connected == true) {
        var socket = Get.find<WTWSocket>();
        for(var m in messages) {
          socket.send(headers: m['headers'], body: m['body']);
        }
      }
    }
  }

  @override
  Future<void> send({ Map<String, String>? headers, Map<String, dynamic>? body }) async {
    Get.find<WTWSocket>().connected == true
      ? Get.find<WTWSocket>().send(headers: headers, body: jsonEncode(body))
      : WTWLogger.write('WTWMessageBrokerService.send() error: WTSocket connection error.');
  }

  @override
  Future<void> receive({ Map<String, String>? headers, String? body }) async {
    notifyBroker({ 'headers': headers, 'body': body });
  }

}