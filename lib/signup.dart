import 'package:flutter/material.dart';
import 'package:workloadmobileapp/finalstage.dart';

class SignupPage extends StatefulWidget {
  final int index;

  const SignupPage({Key key, this.index}) : super(key: key);
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {


  int page = 0;

  _nextPage(){
    if(page < 2){
      setState(() {
          page ++;
      });
    }
    else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FinalstagePage()),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    //Text field controllers
    TextEditingController fullname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password1 = TextEditingController();
    TextEditingController password2 = TextEditingController();
    TextEditingController phone = TextEditingController();

    //First sign up screen
    Widget FirstScreen(){
      return Column(
        children: <Widget>[
          Container(
              padding:EdgeInsets.only(top:15.0) ,
              child: Text(
                'Sign up',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Container(
              child: Text(
                'Fill the details & create your account',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.55),
                    fontSize: width * 0.035
                ),
              ),
              padding: EdgeInsets.only(top: 10.0)
          ),
          WelcomeTextField(controller: fullname,hint: 'eg. Kofi Osei',text: 'Full Name', icon: Icons.person_pin,),
          WelcomeTextField(controller: email,hint: 'eg. kofiosei@gmail.com',text: 'Email', icon: Icons.alternate_email,),
          WelcomeTextField(controller: password1,hint: 'eg. Kofi Osei',text: 'Password', icon: Icons.lock,),
          WelcomeTextField(controller: password2,hint: 'eg. Kofi Osei',text: 'Confirm Password', icon: Icons.lock,),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: 40),
            child: SignupButton(title: 'Continue',action: _nextPage,width: width * 0.5,),
          )
        ],
      );
    }

    Widget SecondScreen(){
      return Column(
        children: <Widget>[
          Container(
              padding:EdgeInsets.only(top:height * 0.135, bottom: 10) ,
              child: Text(
                'Final Stage',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                'Almost done!! Let us help you secure your data',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.55),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: width * 0.1)
          ),
          Container(
            padding: EdgeInsets.only(top: height * 0.025),
            child: WelcomeTextField(icon: Icons.phone,text: 'Phone Number', controller: phone,),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            margin: EdgeInsets.only(top: height * 0.15),
            child: SignupButton(icon: Icons.exit_to_app,title: 'Create Account',action: _nextPage,),
          ),
        ],
      );
    }

    Widget FinalScreen(){
      return Column(
        children: <Widget>[
          Container(
              padding:EdgeInsets.only(top:height * 0.135, bottom: 10) ,
              child: Text(
                'Confirm Phone Number',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                'To finalise your account. Please enter the 6 digit code sent to your number',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.55),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: width * 0.1)
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              '054xxxxxxxxxx',
              style: TextStyle(
                fontSize: width * 0.04,
                color: Color(0xff274765)
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                'Re-enter number if wrong',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.55),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: width * 0.1)
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: width * 0.8,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: '- - - - - -',
                  labelStyle: TextStyle(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))
              ),
              keyboardType: TextInputType.phone,
              maxLength: 6,
            ),
          ),
          Container(
            width: width * 0.4,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: width * 0.075),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Color(0xff274765),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            height: 50,
            child: InkWell(
              onTap: ()=>{},
              child: Container(
                child: Text(
                  'Done',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          )

        ],
      );
    }


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
                  page == 0 ? FirstScreen()
                      : page == 1 ? SecondScreen() : FinalScreen()
                  ,
              ],
            ),
            ),
          ),
        ),
        bottomSheet: Container(
          width: width,
          height: 60,
          child: Column(
            children: <Widget>[
              Container(
                  child: InkWell(
                    onTap: ()=>{},
                    child: Container(
                      child: Text(
                          'Already have an account?',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Color(0xff8B4A4A),
                            fontSize: width * 0.0395 ,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: ()=>{},
                    child: Container(
                      child: Text(
                          'Login',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Color(0xff274765),
                            fontSize: width * 0.038 ,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      );
  }
}



class WelcomeTextField extends StatefulWidget {
  final String text;
  final String hint;
  final controller;
  final IconData icon;

  const WelcomeTextField({Key key, this.text, this.hint, this.controller, this.icon}) : super(key: key);
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
          prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
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

class SignupButton extends StatefulWidget {
  final String title;
  final double width;
  final Function action;
  final IconData icon;

  const SignupButton({Key key, this.title, this.action, this.width, this.icon}) : super(key: key);
  @override
  _SignupButtonState createState() => _SignupButtonState();
}

class _SignupButtonState extends State<SignupButton> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: widget.width != null ?  widget.width: double.infinity,

      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: width * 0.075),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Color(0xff274765),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      height: 50,
      child: InkWell(
        onTap: widget.action != null ? widget.action : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: width * 0.025),
              child: Icon(
                widget.icon != null ? widget.icon : Icons.arrow_forward,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

