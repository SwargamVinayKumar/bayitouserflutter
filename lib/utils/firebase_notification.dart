import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}

@pragma('vm:entry-point')
Future<void> onActionReceivedMethod(ReceivedAction receivedAction) async {
  print("Action received: ${receivedAction.payload}");
}

class FireBaseNotification {
  static final _firebaseMessaging = FirebaseMessaging.instance;

  /// Initialize Awesome Notifications and Firebase Messaging
  Future<void> initNotifications() async {
    await initAwesomeNotification();

    // Set background messaging handler
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    initPushNotification();
    setListeners();
    await requestPermissions();
  }

  /// Initialize Awesome Notifications
  Future<void> initAwesomeNotification() async {
    await AwesomeNotifications().initialize(
      null, // app icon (default)
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic Notifications',
          channelDescription: 'Notification channel for app alerts',
          importance: NotificationImportance.Max,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: const Color(0xFF9D50DD),
        ),
      ],
      debug: true,
    );
  }

  /// Request notification permissions for iOS and Android
  Future<void> requestPermissions() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      await AwesomeNotifications().requestPermissionToSendNotifications();
    }
  }

  /// Subscribe user ID to FCM topic
  static Future<void> subscribeToUserTopic(String userId) async {
    try {
      if (userId.isNotEmpty) {
        final sanitizedId = userId.replaceAll(RegExp(r'[^a-zA-Z0-9-_.~%]'), '_');
        await _firebaseMessaging.subscribeToTopic(sanitizedId);
        print("Subscribed to FCM topic for user: $sanitizedId");
      }
    } catch (e) {
      print("Error subscribing to user topic: $e");
    }
  }

  /// Unsubscribe user ID from FCM topic
  static Future<void> unsubscribeFromUserTopic(String userId) async {
    try {
      if (userId.isNotEmpty) {
        final sanitizedId = userId.replaceAll(RegExp(r'[^a-zA-Z0-9-_.~%]'), '_');
        await _firebaseMessaging.unsubscribeFromTopic(sanitizedId);
        print("Unsubscribed from FCM topic for user: $sanitizedId");
      }
    } catch (e) {
      print("Error unsubscribing from user topic: $e");
    }
  }

  /// Handle notification interactions
  void setListeners() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print("Notification clicked in background: ${message.data}");
    });

    AwesomeNotifications().setListeners(
      onActionReceivedMethod: onActionReceivedMethod,
    );
  }

  /// Initialize push notifications (Foreground live notifications)
  void initPushNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Received foreground message: ${message.notification?.title}");
      final notification = message.notification;
      if (notification == null) return;

      final imageUrl =
          notification.android?.imageUrl ?? notification.apple?.imageUrl;

      AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: DateTime.now().millisecondsSinceEpoch.remainder(100000),
          channelKey: 'basic_channel',
          title: notification.title,
          body: notification.body,
          bigPicture: imageUrl,
          largeIcon: imageUrl,
          notificationLayout: (imageUrl != null && imageUrl.isNotEmpty)
              ? NotificationLayout.BigPicture
              : NotificationLayout.Default,
          payload: message.data.map((key, value) => MapEntry(key, value.toString())),
        ),
      );
    });
  }
}
