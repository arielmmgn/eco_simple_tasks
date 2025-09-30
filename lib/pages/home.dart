import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:eco_simple_tasks/core/eco_colors.dart';
import 'package:eco_simple_tasks/widgets/eco_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EcoColors.primary(1),
      appBar: AppBar(
        backgroundColor: EcoColors.primary(1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.rectangle_grid_2x2_fill, 
              color: EcoColors.white(1)
            ),

            Center(
              child: EcoText(
                text: DateFormat("d MMM", "pt_BR").format(_selectedDate),
                fontSize: 20,
              )
            ),

            Icon(
              CupertinoIcons.clock, 
              color: EcoColors.white(1)
            )
          ],
        ),
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
                          text: 'Today', 
                          fontSize: 26, 
                          fontWeight: FontWeight.bold
                        ),
                        EcoText(text: '6 tasks', fontSize: 14),
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
                    width: 100,
                    child: EcoText(
                      text: "Add New", 
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
                  EasyDateTimeLinePicker.itemBuilder(
                    firstDate: DateTime.now().add(Duration(days: -30)),
                    lastDate: DateTime.now().add(Duration(days: 30)), 
                    locale: Locale('pt_BR'),
                    focusedDate: _selectedDate, 
                    itemExtent: 64.0,
                    
                    headerOptions: HeaderOptions(
                      headerType: HeaderType.none,
                    ),

                    itemBuilder: (context, date, isSelected, isDisabled, isToday, onTap) {
                      return InkResponse(
                        onTap: onTap,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: isSelected 
                              ? EcoColors.primary(1) 
                              : null,
                            borderRadius: BorderRadius.circular(10),
                            border: BoxBorder.all(
                              color: isSelected 
                                ? EcoColors.primary(1) 
                                : EcoColors.black(0.3),
                              width: 1.0
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              EcoText(
                                text: date.day.toString(),
                                fontSize: 18.0,
                                color: isSelected 
                                  ? EcoColors.white(1) 
                                  : EcoColors.black(0.4),
                                fontWeight: isSelected 
                                  ? FontWeight.bold 
                                  : FontWeight.normal
                              ),
                              EcoText(
                                text: DateFormat("MMM", "pt_BR").format(date),
                                fontSize: 14.0,
                                color: isSelected 
                                  ? EcoColors.white(1) 
                                  : EcoColors.black(0.4),
                                fontWeight: isSelected 
                                  ? FontWeight.bold 
                                  : FontWeight.normal
                              ),
                              EcoText(
                                text: DateFormat("yyyy").format(date),
                                fontSize: 10.0,
                                color: isSelected 
                                  ? EcoColors.white(1) 
                                  : EcoColors.black(0.4),
                                fontWeight: isSelected 
                                  ? FontWeight.bold 
                                  : FontWeight.normal
                              ),
                            ],
                          ),
                        ),
                      );
                    }, 

                    onDateChange:  (date) {
                      setState(() {
                        _selectedDate = date;
                      });
                    },
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}