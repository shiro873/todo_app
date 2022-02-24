import 'package:flutter/material.dart';
import 'package:todo_app/utils/text_style.dart';
import '../utils/util.dart';

final String user = "Neo";
final String reminder = 'Today Reminder';
final String reminderTitle = 'Meeting with client';
final String reminderTime = '13.00 PM';
final int taskCount = 5;

PreferredSizeWidget fullAppbar(BuildContext context) {
  return PreferredSize(
    preferredSize:
        taskCount > 0 ? Size.fromHeight(210.0) : Size.fromHeight(75.0),
    child: AppBar(
      title: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hello $user!',
              style: appBarTitleStyle(),
            ),
            Text(
              'Today you have $taskCount tasks',
              style: appBarDetailStyle(),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: Image.asset('assets/images/photo.png'),
        ),
      ],
      elevation: 5,
      backgroundColor: CustomColors.GlassBackground,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(5),
        child: Container(
          child: taskCount == 0
              ? Container()
              : Container(
                  margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                  decoration: BoxDecoration(
                    color: CustomColors.DarkGlassBackground,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            reminder,
                            style: appBarTitleStyle(),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            reminderTitle,
                            style: appBarDetailStyle(),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            reminderTime,
                            style: appBarDetailStyle(),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.9,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 80),
                        child: Icon(
                          Icons.clear,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    ),
  );
}
