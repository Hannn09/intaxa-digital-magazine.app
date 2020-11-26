import 'package:covid/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D6AE3),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 43),
                child: Text(
                  'Lets Join\nWith Us',
                  style: TextStyle(
                      fontFamily: 'Viga', fontSize: 36, color: Color(0xFFFFFFFF)),
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60,top: 30),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Container(
                            width: 273.0,
                            child: TextField(
                                cursorColor: Color(0xFFFFFFFF),
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                                    ),
                                    hintText: 'Your name',
                                    hintStyle: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'Sora',
                                        fontSize: 14.0))),
                          ),
                        ),
                     
                    SizedBox(height: 15),
                    Container(
                      width: 273.0,
                      child: TextField(
                          cursorColor: Color(0xFFFFFFFF),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              ),
                              hintText: 'Your email',
                              hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Sora',
                                  fontSize: 14.0))),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 273.0,
                      child: TextField(
                          obscureText: _isHidden,
                          cursorColor: Color(0xFFFFFFFF),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              ),
                              suffixIcon: IconButton(
                                color: Color(0xFFFFFFFF),
                                icon: _isHidden
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: _toggleVisibility,
                              ),
                              hintText: 'Your password',
                              hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Sora',
                                  fontSize: 14.0))),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 273.0,
                      child: TextField(
                          obscureText: _isHidden,
                          cursorColor: Color(0xFFFFFFFF),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              ),
                              suffixIcon: IconButton(
                                color: Color(0xFFFFFFFF),
                                icon: _isHidden
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: _toggleVisibility,
                              ),
                              hintText: 'Re-type your password',
                              hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Sora',
                                  fontSize: 14.0))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 40, top: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Container(
                              height: 47.0,
                              width: 113.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                     ],
                    ),
                  ),
                  Container(
                    color: Color(0xFF0B4490),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                'Or Sign In With',
                                style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 15.0,
                                    color: Color(0xFFFFFFFF)),
                              ),
                              Row(
                                children: <Widget>[
                                  Image.asset('assets/google.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('assets/facebook.png'),
                                  SizedBox(
                                    width: 60,
                                  )
                                ],
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Container(
                              height: 47.0,
                              width: 113.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 
            ],
          ),
        ),
      ),
    );
  }
}
