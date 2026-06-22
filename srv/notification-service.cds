using onboarding.notification.Notifications as dbNotifications from '../db/notification/Notification';

service NotificationService {

    entity Notifications as projection on dbNotifications;

}
