import '../../external/lib_dotenv.dart';
import '../../external/lib_getx.dart';
import '../../external/lib_stomp.dart';
import '../../logger/wtw_logger.dart';
import '../../message_broker/wtw_message_broker_service.dart';
import '../wtw_socket.dart';

class WTWSocketImpl extends WTWSocket {

  WTWSocketImpl() {
    setReconnectDelayTime(5);
    setHeartbeatIncomingTime(5);
    setHeartbeatOutgoingTime(10);
    setWebSocketAddress(dotenv.get('WS_ADDRESS'));
    setSubscribeDestination(dotenv.get('WS_SUBSCRIBE_DESTIONATION'));
    setSendDestionation(dotenv.get('WS_SEND_DESTINATION'));
  }

  @override
  Future<void> start() async {
    StompConfig stompConfig = StompConfig(
      url: wsAddress!,
      reconnectDelay: Duration(seconds: reconnectDelayTime!),
      heartbeatIncoming: Duration(seconds: heartbeatIncomingTime!),
      heartbeatOutgoing: Duration(seconds: heartbeatOutgoingTime!),
      stompConnectHeaders: clientHeaders,
      webSocketConnectHeaders: clientHeaders,
      onConnect: onConnect,
      onStompError: (StompFrame sF) {
        WTWLogger.write('WTWSocket.start() onStompError: headers: ${sF.headers}, body: ${sF.body}');
      },
      onDisconnect: (StompFrame sF) {
        WTWLogger.write('WTWSocket.start() onDisconnect: headers: ${sF.headers}, body: ${sF.body}');
      },
      onUnhandledFrame: (StompFrame sF) {
        WTWLogger.write('WTWSocket.start() onUnhandledFrame: headers: ${sF.headers}, body: ${sF.body}');
      },
      onUnhandledMessage: (StompFrame sF) {
        WTWLogger.write('WTWSocket.start() onUnhandledMessage: headers: ${sF.headers}, body: ${sF.body}');
      },
      onUnhandledReceipt: (StompFrame sF) {
        WTWLogger.write('WTWSocket.start() onUnhandledReceipt: headers: ${sF.headers}, body: ${sF.body}');
      },
      onWebSocketError: (dynamic e) {
        WTWLogger.write('WTWSocket.start() onWebSocketError: ${e.toString()}');
      },
      onDebugMessage: onError,
    );

    client = StompClient(config: stompConfig);
    client!.activate();
  }

  @override
  void stop() {
    client!.deactivate();
    client = null;
    isConnected(false);
  }

  @override
  Future<void> restart() async {
    stop();
    await start();
  }

  @override
  void onError(String? e) {
    if(e!.contains('<<< TOKEN_MISSING')) {
      isConnected(false);
      setErrorMessage(show: true, message: '${'stompError1'.tr}. ${'errorTitle'.tr}: $e');
    }else if(e.contains('<<< TOKEN_INVALID')) {
      isConnected(false);
      setErrorMessage(show: true, message: '${'stompError2'.tr}. ${'errorTitle'.tr}: $e');
    }else if(e.contains('Unknown connection error')) {
      isConnected(false);
      setErrorMessage(show: true, message: '${'stompError3'.tr}. ${'errorTitle'.tr}: $e');
    }else if(e.contains('Connection error')) {
      isConnected(false);
      setErrorMessage(show: true, message: '${'stompError4'.tr}. ${'errorTitle'.tr}: $e');
    }else {
      if(!connected!) {
        isConnected(true);
      }
      if(connected! && errorMessage!.isNotEmpty) {
        setErrorMessage(show: false, message: '');
      }
    }
  }

  @override
  void onConnect(StompFrame sF) async {
    WTWLogger.write('WTSocket.onConnect() address: $wsAddress, destination: $subscribeDestination');
    isConnected(true);

    client!.subscribe(
      destination: subscribeDestination!,
      headers: clientHeaders, 
      callback: (f) async => await receive(f)
    );
  }

  @override
  Future<void> receive(StompFrame sF) async {
    Map<String, String> headers = sF.headers;
    String? body                = String.fromCharCodes(sF.binaryBody!);

    await Get.find<WTWMessageBrokerService>().receive(headers: headers, body: body);
  }

  @override
  void send({ Map<String, String>? headers, String? body }) {
    client!.send(destination: sendDestination!, headers: headers, body: body);
  }

}