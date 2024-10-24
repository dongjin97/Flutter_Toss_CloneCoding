import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_os_switch.dart';
import 'package:flutter/material.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChange;

  const SwitchMenu(this.title, this.isOn, {super.key, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          title.text.white.bold.make(),
          emptyExpanded,
          OsSwitch(
            value: isOn,
            onChanged: onChange,
          ),
        ],
      ).p20(),
    );
  }
}
