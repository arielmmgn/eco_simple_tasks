import 'package:eco_simple_tasks/core/eco_colors.dart';
import 'package:eco_simple_tasks/core/local_storage.dart';
import 'package:eco_simple_tasks/widgets/eco_bar.dart';
import 'package:eco_simple_tasks/widgets/eco_large_button.dart';
import 'package:eco_simple_tasks/widgets/eco_lateral_calendar.dart';
import 'package:eco_simple_tasks/widgets/eco_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
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
        backgroundColor: EcoColors.primary(1),
        actionsLeft: [
          Icon(
            CupertinoIcons.rectangle_grid_2x2_fill,
            color: EcoColors.white(1),
          ),
        ],
        text: DateFormat("d MMM", appLocale).format(_selectedDate),
        actionsRight: [
          Icon(CupertinoIcons.clock, color: EcoColors.white(1)),
        ]
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
                  EcoLargeButton(
                    backgroundColor: EcoColors.white(1),
                    buttonText: 'add_new'.tr,
                    buttonTextColor: EcoColors.primary(1),
                    onPressed: () {
                      Get.toNamed("/categories");
                    },
                  ),
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
              child: ListView(
                children: [
                  EcoLateralCalendar(
                    selectedDate: _selectedDate, 
                    locale: appLocale,
                    onDateChange: 
                      (date) => setState(() =>_selectedDate = date)
                  ),
                  SizedBox(height: 20),
                  EcoText(
                    text: 'my_tasks'.tr, 
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    color: EcoColors.black(0.4)
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}