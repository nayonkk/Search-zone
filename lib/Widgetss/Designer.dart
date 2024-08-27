import 'package:flutter/material.dart';
import 'package:ui_ux_8/Widgetss/UI_Helper.dart';


class Designer_Details extends StatelessWidget {
  const Designer_Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          UI_Helper.customContainer(
              "Google", "Full Time", "Software Designer", "\$00/h"),
          UI_Helper.customContainer(
              "Web", "Part Time", "UI/UX Designer", "\$00/h"),
          UI_Helper.customContainer(
              "Apps", "Full Time", "Product Designer", "\$00/h"),
        ],
      ),
    );
  }
}
