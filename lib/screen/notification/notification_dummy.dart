import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtossNotificiation>[
  TtossNotificiation(NotificationType.tossPay, '이번주에 영화 한편 어떄요? CGV 할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(
        27.minutes),),
  TtossNotificiation(NotificationType.stock, '인적분할에 대해 알려드릴게요.',
    DateTime.now().subtract(
        1.hours),),
  TtossNotificiation(NotificationType.walk, '1,000걸음 이상 걸었다면 포인트 받으세요.',
    DateTime.now().subtract(
        1.hours),),
  TtossNotificiation(
    NotificationType.moneyTip, '유럽 식품 물가가 치솟고 있어요. \n유럽여행에 관심이 있다면 확인해보세요.',
    DateTime.now().subtract(
        8.hours),),
  TtossNotificiation(NotificationType.walk, '오늘 1,000걸음을 넘겻어요. 포인트를 받아보세요.',
    DateTime.now().subtract(
        27.minutes),),
  TtossNotificiation(NotificationType.luck, '6월 5일, 행운복권이 도착했어요.',
    DateTime.now().subtract(
        27.minutes),),
  TtossNotificiation(NotificationType.people, '띵동! 월요일 공동구매 보러가기',
    DateTime.now().subtract(
        27.minutes),),
];