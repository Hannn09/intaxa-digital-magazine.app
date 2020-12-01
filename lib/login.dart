import 'package:flutter/material.dart';
import 'package:covid/register.dart';
import 'package:covid/magazines.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: <Widget>[
                      Center(
                          child: Image.asset(
                        'assets/login.png',
                        width: 250.0,
                        height: 250.0,
                      )),
                      Container(
                        width: 273.0,
                        child: TextField(
                            cursorColor: Color(0xFFFFFFFF),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFFFF)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFFFF)),
                                ),
                                hintText: 'Type your email',
                                hintStyle: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Sora',
                                    fontSize: 14.0))),
                      ),
                      Container(
                        width: 273.0,
                        child: TextField(
                            obscureText: _isHidden,
                            cursorColor: Color(0xFFFFFFFF),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFFFF)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFFFF)),
                                ),
                                suffixIcon: IconButton(
                                  color: Color(0xFFFFFFFF),
                                  icon: _isHidden
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                  onPressed: _toggleVisibility,
                                ),
                                hintText: 'Type your password',
                                hintStyle: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Sora',
                                    fontSize: 14.0))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 44.0,
                        ),
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Forgot Password ?',
                                style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 10.0,
                                    color: Color(0xFFFFFFFF),
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Magazines()));
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
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Color(0xFF0B4490),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
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
                                  'Sign Up',
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
                  )
                ]),
          ),
        ));
  }
}
