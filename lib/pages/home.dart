import 'package:eco_simple_tasks/core/eco_colors.dart';
import 'package:eco_simple_tasks/core/local_storage.dart';
import 'package:eco_simple_tasks/widgets/eco_bar.dart';
import 'package:eco_simple_tasks/widgets/eco_lateral_calendar.dart';
import 'package:eco_simple_tasks/widgets/eco_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DateTime _selectedDate;
  late String appLocale = 'en_US';

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    appLocale = LocalStorage().getLocale() ?? 'en_US';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EcoColors.primary(1),
      appBar: EcoBar.bar(
        text: DateFormat("d MMM", appLocale).format(_selectedDate),
      ),

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EcoText(
                          text: 'today'.tr, 
                          fontSize: 26, 
                          fontWeight: FontWeight.bold
                        ),
                        EcoText(text: 'tasks_count'.trArgs(['6']), fontSize: 14),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: EcoColors.white(1),
                      borderRadius: BorderRadius.circular(10),
                      border: BoxBorder.all(
                        color: EcoColors.white(0.5),
                        width: 1.0
                      ),
                    ),
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: EcoText(
                      text: "add_new".tr, 
                      fontSize: 16, 
                      color: EcoColors.primary(1),
                    )
                  )
                ],
              ),
            )
          ),

          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: EcoColors.white(1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                )
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  EcoLateralCalendar(
                    selectedDate: _selectedDate, 
                    locale: appLocale,
                    onDateChange: (date) {
                      setState(() {
                        _selectedDate = date;
                      });
                    }
                  ),

                  SizedBox(height: 20),
                  EcoText(text: 'my_tasks'.tr, fontSize: 18, fontWeight: FontWeight.bold),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}