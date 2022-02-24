import 'package:awesome_aurora_gradient/awesome_aurora_gradient.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/pages/home.dart';
import 'package:todo_app/widget/empty.dart';

import '../utils/util.dart';

class Onboarding extends StatefulWidget {
  Onboarding({Key? key}) : super(key: key);

  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Hero(
                      tag: 'Clipboard',
                      child: Image.asset('assets/images/Clipboard.png'),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Pocket Reminder',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.TextHeader),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Daily task organizer. Reminding about pending, completed, and scheduled tasks.',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.TextBody,
                              fontFamily: 'opensans'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Ink(
                        decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                            color: Color.fromARGB(255, 45, 64, 150)),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                          onPressed: () => {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            )
                          },
                          color: CustomColors.BlueLight,
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ))
        //
        );
  }
}
