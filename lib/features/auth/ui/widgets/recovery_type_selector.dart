
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class RecoveryTypeSelector extends StatefulWidget {
  const RecoveryTypeSelector({super.key});

  @override
  State<RecoveryTypeSelector> createState() => _RecoveryTypeSelectorState();
}

class _RecoveryTypeSelectorState extends State<RecoveryTypeSelector> {
  String selected = 'SMS';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildOption('SMS', Colors.blue.shade100, AppColors.themeColor,AppColors.themeColor),
        buildOption('Email', Colors.red.shade100, Colors.red.shade400,Colors.black),
      ],
    );
  }

  ElevatedButton buildOption(String title, Color bgColor, Color iconBgColor,Color textColor) {
    final isSelected = selected == title;
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selected = title;
        });
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(18),
        ),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      ),
      child: Row(
        children: [
          SizedBox(width: 16,),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconBgColor,
            ),
            child: isSelected
                ? Icon(Icons.check, color: Colors.white, size: 14)
                : null,
          ),
        ],
      ),
    );
  }
}
