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
    TextEditingController fullname = TextEditingController();


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
                  Container(
                    width: width * 0.9,
                    padding: EdgeInsets.only(top:60.0),
                    child: TextField(
                      controller: fullname,
                      decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'eg. Kofi Osei',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))
                    ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    width: width * 0.9,
                    padding: EdgeInsets.only(top:20.0),
                    child: TextField(
                      controller: fullname,
                      decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'eg. kofiosei@gmail.com',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))
                    ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    width: width * 0.9,
                    padding: EdgeInsets.only(top:20.0),
                    child: TextField(
                      controller: fullname,
                      decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'eg. Kofi Osei',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))
                    ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    width: width * 0.9,
                    padding: EdgeInsets.only(top:20.0, bottom: 40.0),
                    child: TextField(
                      controller: fullname,
                      decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'eg. Kofi Osei',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))
                    ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    width: width * 0.5,
                    
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.075),
                    margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
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
                              fontSize: width * 0.04
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
