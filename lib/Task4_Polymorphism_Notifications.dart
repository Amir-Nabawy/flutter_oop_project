

class NotificationService {
  void sendNotification() {
    print("How Are you ? ");
  }
}

class EmailNotification extends NotificationService {
  @override
  void sendNotification() {
    print("Email : amir@gmail.com");
  }
}

class SmsNotification extends NotificationService {
  @override
  void sendNotification() {
    print("Sending SMS");
  }
}

class PushNotification extends NotificationService {
  @override
  void sendNotification() {
    print("Sending Push Notification ");
  }
}

void main() {
  List<NotificationService> notifications = [
    EmailNotification(),
    SmsNotification(),
    PushNotification(),
  ];
  for (var notification in notifications) {
    notification.sendNotification();
  }
}
