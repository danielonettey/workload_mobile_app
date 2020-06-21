import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workloadmobileapp/signup.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    //Welcome Screen

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: width * 0.075, right: width * 0.075, top: height * 0.45),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/onboarding/welcome_design.png'),
            fit: BoxFit.fill,
          ),
        ),
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Ready  to make some money?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.1
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      'When life gets busy, you don’t have to tackle it alone. ',
                      style: TextStyle(
                          color: Color(0xff657F98),
                          fontSize: width * 0.06
                      ),
                    ),
                  ),

                ],
              )
            ),
            Positioned(
              bottom: 20,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: width * 0.075),
                margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffA9ADAF),
                        width: 3
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                height: 70,
                child: InkWell(
                  onTap: ()=>Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.06
                          ),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage('assets/icons/arrow_right_grey.png'),
                          height: width * 0.1,
                        ),
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
