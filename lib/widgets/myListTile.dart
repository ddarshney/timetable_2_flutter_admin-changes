import 'package:flutter/material.dart';
import 'package:timetable_2_flutter_admin/globals/myColors.dart';
import 'package:timetable_2_flutter_admin/globals/myFonts.dart';
import 'package:timetable_2_flutter_admin/globals/mySpaces.dart';

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  final String title;
  final String time;
  final String duration;
  final String type;
  final String email;
  Color sideColor;

  MyListTile({this.title, this.type, this.time, this.duration, this.email}) {
    switch (this.type) {
      case 'Assignment':
        sideColor = kBlack;
        break;
      case 'Quiz':
        sideColor = kYellow;
        break;
      default:
        sideColor = kBlue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('You tapped for more details');
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(MySpaces.listTileLeftPadding, 0, 0, MySpaces.horizontalScreenPadding),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '$title',
                          style: MyFonts.extraBold.size(25),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              '$type',
                              overflow: TextOverflow.fade,
                              softWrap: false,
                              style: MyFonts.medium.setColor(kGrey).size(15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '$time',
                          style: MyFonts.extraBold.size(20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '$duration',
                          style: MyFonts.medium.size(15),
                        ),
                      ),
                    ),
               Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '$email',
                          style: MyFonts.medium.setColor(kGrey).size(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        height: 100,
        decoration: BoxDecoration(
          gradient:
              LinearGradient(stops: [0.05, 0.05], colors: [sideColor, kWhite]),
          color: kWhite,
          // border: Border.all(color: kGrey, width: 1),
          // borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
