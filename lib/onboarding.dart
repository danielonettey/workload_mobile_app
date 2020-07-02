import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workloadmobileapp/signup.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  goToSignUp(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignupPage(index: 2,)),
    );
  }

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
                width: width * 0.75,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                child: OnboardingButton(title: 'Get Started',action: goToSignUp,),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingButton extends StatefulWidget {
  final String title;
  final Function action;

  const OnboardingButton({Key key, this.title, this.action}) : super(key: key);
  @override
  _OnboardingButtonState createState() => _OnboardingButtonState();
}

class _OnboardingButtonState extends State<OnboardingButton> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: 70,
      decoration: BoxDecoration(
          border: Border.all(
              color: Color(0xffA9ADAF),
              width: 3
          ),
          color: Color(0xff274765),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: InkWell(
        onTap: widget.action != null ? widget.action : ()=>{} ,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.075),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.06
                  ),
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('assets/icons/arrow_right_grey.png'),
                  height: width * 0.04,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
