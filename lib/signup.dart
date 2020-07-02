import 'package:flutter/material.dart';
import 'package:workloadmobileapp/finalstage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    //Text field controllers
    TextEditingController fullname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password1 = TextEditingController();
    TextEditingController password2 = TextEditingController();


    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: width * 0.1),
                          child: Image(
                            image: AssetImage('assets/icons/logo.png'),
                            width: width * 0.3,
                          ),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('assets/icons/top_curve.png'),
                            width: width * 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:EdgeInsets.only(top:15.0) ,
                    child: Text(
                      'Sign up',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                  Container(
                    child: Text('Fill the details & create your account'),
                    padding: EdgeInsets.only(top: 10.0)
                  ),
                  WelcomeTextField(controller: email,hint: 'eg. Kofi Osei',text: 'Full Name'),
                  WelcomeTextField(controller: email,hint: 'eg. kofiosei@gmail.com',text: 'Email'),
                  WelcomeTextField(controller: password1,hint: 'eg. Kofi Osei',text: 'Password'),
                  WelcomeTextField(controller: password2,hint: 'eg. Kofi Osei',text: 'Confirm Password'),
                  Container(
                    width: width * 0.5,
                    
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.075),
                    margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 40),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xffA9ADAF),
                            width: 3
                        ),
                        color: Color(0xff274765),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    height: 70,
                    child: InkWell(
                      onTap: ()=>Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FinalstagePage()),
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage('assets/icons/arrow_right_grey.png'),
                          height: height * 0.03,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  'Already have an account?',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Color(0xff8B4A4A),
                    fontWeight: FontWeight.bold,
                  )
                )),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Login',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Color(0xff274765),
                    fontWeight: FontWeight.bold,
                  )
                )
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class WelcomeTextField extends StatefulWidget {
  final String text;
  final String hint;
  final controller;

  const WelcomeTextField({Key key, this.text, this.hint, this.controller}) : super(key: key);
  @override
  _WelcomeTextFieldState createState() => _WelcomeTextFieldState();
}

class _WelcomeTextFieldState extends State<WelcomeTextField> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.8,
      padding: EdgeInsets.only(top:20.0),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            labelText: widget.text,
            hintText: widget.hint,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0))
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
