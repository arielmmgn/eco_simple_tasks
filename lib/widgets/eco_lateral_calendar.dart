import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:eco_simple_tasks/core/eco_colors.dart';
import 'package:eco_simple_tasks/widgets/eco_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EcoLateralCalendar extends StatelessWidget {
  final DateTime selectedDate;
  final String appLocale = 'en_US';
  final void Function(DateTime)? onDateChange;

  const EcoLateralCalendar({
    super.key,
    required this.selectedDate,
    required String locale,
    this.onDateChange,
  });

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLinePicker.itemBuilder(
      firstDate: DateTime.now().add(Duration(days: -30)),
      lastDate: DateTime.now().add(Duration(days: 30)),
      locale: Locale(appLocale),
      focusedDate: selectedDate,
      itemExtent: 64.0,

      headerOptions: HeaderOptions(headerType: HeaderType.none),

      itemBuilder: (context, date, isSelected, isDisabled, isToday, onTap) {
        return InkResponse(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected ? EcoColors.primary(1) : null,
              borderRadius: BorderRadius.circular(10),
              border: BoxBorder.all(
                color: isSelected ? EcoColors.primary(1) : EcoColors.black(0.3),
                width: 1.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                EcoText(
                  text: date.day.toString(),
                  fontSize: 18.0,
                  color: isSelected ? EcoColors.white(1) : EcoColors.black(0.4),
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
                EcoText(
                  text: DateFormat("MMM", appLocale).format(date),
                  fontSize: 14.0,
                  color: isSelected ? EcoColors.white(1) : EcoColors.black(0.4),
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
                EcoText(
                  text: DateFormat("yyyy", appLocale).format(date),
                  fontSize: 10.0,
                  color: isSelected ? EcoColors.white(1) : EcoColors.black(0.4),
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ],
            ),
          ),
        );
      },
      onDateChange: onDateChange,
      // onDateChange: (date) {
      //   setState(() {
      //     _selectedDate = date;
      //   });
      // },
    );
  }
}