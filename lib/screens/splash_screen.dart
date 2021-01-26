import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/home.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 500.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 10.0),
                        height: 80,
                        width: 80,
                        child: Image.asset('assets/images/todo.png')),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: TypewriterAnimatedTextKit(
                        text: [
                          'Todo List App !',
                        ],
                        textStyle: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      // Text(
                      //   'What Todo List App !',
                      //   style: TextStyle(
                      //       fontSize: 20.0, fontWeight: FontWeight.bold),
                      // ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 20.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'What Todo, is a simple app to list your tasks and to check when finished and update tasks ',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 80.0),
                      height: 60.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: FlatButton(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Home(),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
