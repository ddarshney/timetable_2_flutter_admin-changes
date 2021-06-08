import 'package:flutter/material.dart';
import 'package:timetable_2_flutter_admin/globals/myColors.dart';
import 'package:timetable_2_flutter_admin/globals/myFonts.dart';
import 'package:timetable_2_flutter_admin/globals/mySpaces.dart';

import '../globals/myColors.dart';
import '../globals/myColors.dart';
import '../globals/myColors.dart';
import '../globals/myColors.dart';
import '../globals/myColors.dart';

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  final String title;
  final String time;
  final String duration;
  final String type;
  final String email;
  final String status;
  Color sideColor;
  Color mainColor;
  Color text;
  Color bgColor;

  MyListTile(
      {this.title,
      this.status,
      this.type,
      this.time,
      this.duration,
      this.email}) {
    switch (this.status) {
      case 'cancelled':
        sideColor = kBlack;
        mainColor = k1Red;
        text = kRed;

        bgColor=lRed;

        break;
      case 'update':
        sideColor = kBlue;
        mainColor = k1Yellow;
        text = kYellow;

        bgColor=lYellow;

        break;
      default:
        sideColor = kBlue;
        mainColor = kBlue;
        bgColor=lBlue;
        text = kBlue;
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
          padding: EdgeInsets.fromLTRB(MySpaces.listTileLeftPadding, 0, 0,
              MySpaces.horizontalScreenPadding),
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
              Container(
                decoration: BoxDecoration(
                    color: bgColor,
                  borderRadius: BorderRadius.circular(18.25)
                ),
                height: 20,
                width: 79,

                child: SizedBox(

                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '$status',
                      style:
                        MyFonts.medium.setColor(text).size(10),
                    ),
                  ),
                ),
              ),
            height: 10,
            width: 40,
                      color: mainColor,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '$status',
                          style: 
                            MyFonts.medium.size(5),
                        ),
                      ),
                    ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      child: Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '$time',
                            style: MyFonts.extraBold.size(20),
                          ),
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
           border: Border.all(color: grey2, width: 1),
           borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
