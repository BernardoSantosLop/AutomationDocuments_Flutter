import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/datesheet_screen/data/datesheet_data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DateSheetScreen extends StatelessWidget {
  const DateSheetScreen({Key? key}) : super(key: key);
  static const String routeName = 'DateSheetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Tramites'),
      ),
      body: Container(
        width: 100.w,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: kTopBorderRadius,
        ),
        child: ListView.builder(
          itemCount: dateSheet.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                  left: kDefaultPadding / 2, right: kDefaultPadding / 2),
              padding: EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 3.h,
                    child: Divider(
                      thickness: 1.0,
                    ),
                  ),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //1 columna
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dateSheet[index].date.toString(),
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w900,
                                    ),
                          ),
                          Text(dateSheet[index].monthName,
                              style: Theme.of(context).textTheme.caption),
                        ],
                      ),

                      //2 columna
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dateSheet[index].subjectName,
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w900,
                                    ),
                          ),
                          Text(dateSheet[index].dayName,
                              style: Theme.of(context).textTheme.caption),
                        ],
                      ),
                      //3 columna
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '🕒${dateSheet[index].time}',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                    child: Divider(
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
