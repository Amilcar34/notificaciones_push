import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {

  static String Token = 'permita las notificaciones';

  @pragma("vm:entry-point")
  Future<void> initNotificacions() async {
    print('initNotificacions');
    final notificationSettings = await FirebaseMessaging.instance.requestPermission();
    print('notificationSettings');
    final apnsToken = await FirebaseMessaging.instance.getToken();
    print('apnsToken 9');
    print(apnsToken);
    Token = apnsToken!;
    if(Token != null){
      print('apns');
      print(Token);
    }

    await FirebaseMessaging.instance.subscribeToTopic("medife");

  }
}
