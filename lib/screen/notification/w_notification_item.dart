import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TtossNotificiation notificiation;
  final VoidCallback onTap;
  const NotificationItemWidget({required this.onTap,super.key, required this.notificiation});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const leftPadding = 10.0;
  static const iconWidth = 25.0;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: widget.notificiation.isRead
            ? context.backgroundColor
            : context.appColors.unreadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Width(leftPadding),
                Image.asset(
                  widget.notificiation.type.iconPath,
                  width: iconWidth,
                ),
                widget.notificiation.type.name.text.white
                    .size(12)
                    .color(context.appColors.lessImportant)
                    .make(),
                emptyExpanded,
                timeago
                    .format(widget.notificiation.time, locale: 'ko')
                    .text
                    .size(13)
                    .color(context.appColors.lessImportant)
                    .make(),
              ],
            ),
            widget.notificiation.description.text.white
                .make()
                .pOnly(left: leftPadding + iconWidth),
          ],
        ),
      ),
    );
  }
}
