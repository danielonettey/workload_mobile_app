import 'package:flutter/material.dart';

class FinalstagePage extends StatefulWidget {
  @override
  _FinalstagePageState createState() => _FinalstagePageState();
}

class _FinalstagePageState extends State<FinalstagePage>{
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    TextEditingController number = TextEditingController();

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
                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: 120.0),
                  child: Text(
                    'Final Stage',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Almost done!!! Let us help you secure your \n data.',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                    width: width * 0.8,
                    padding: EdgeInsets.only(top:50.0, bottom: 100.0),
                    child: TextField(
                      controller: number,
                      decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'eg. 0244123456',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))
                    ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    width: width * 0.7,
                    
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
                          'Create Account',
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
              ]
            ),
          )
        )
      ),
    );

  }
}