import 'package:flutter/material.dart';
import 'package:covid/detailmagz.dart';

class TopicMagz extends StatefulWidget {
  @override
  _TopicMagzState createState() => _TopicMagzState();
}

class _TopicMagzState extends State<TopicMagz> {
  bool isSelectedCovid = false;
  bool isSelectedTech = false;
  bool isSelectedInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Image.asset('assets/menu.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: IconButton(icon: Icon(Icons.search), onPressed: null),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'For You',
                                      style: TextStyle(
                                        fontFamily: 'Viga',
                                        fontSize: 24,
                                      ),
                                    ),
                                  ]))
                        ],
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Image.asset('assets/cover.png',
                                          width: 124, height: 154),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 50),
                                      child: Text(
                                        'Covid',
                                        style: TextStyle(
                                          fontFamily: 'Viga',
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Text(
                                        '12 Nov 2020',
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 9,
                                            color: Color(0xFF5B5B5B)),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Image.asset('assets/cover2.png',
                                          width: 124, height: 154),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        'Technology',
                                        style: TextStyle(
                                          fontFamily: 'Viga',
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Text(
                                        '12 Nov 2020',
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 9,
                                            color: Color(0xFF5B5B5B)),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Image.asset('assets/cover2.png',
                                          width: 124, height: 154),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        'Information',
                                        style: TextStyle(
                                          fontFamily: 'Viga',
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Text(
                                        '12 Nov 2020',
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 9,
                                            color: Color(0xFF5B5B5B)),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                color: isSelectedCovid
                                    ? Color(0xFFFFFFFF)
                                    : Color(0xFF0D6AE3)),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelectedCovid = !isSelectedCovid;
                                    });
                                  },
                                  child: Container(
                                    width: 96,
                                    height: 41,
                                    child: Center(
                                      child: Text(
                                        'Covid 19',
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 11,
                                            color: isSelectedCovid
                                                ? Color(0xFF000000)
                                                : Color(0xFFFFFFFF)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: isSelectedTech
                                    ? Color(0xFFFFFFFF)
                                    : Color(0xFF0D6AE3)),
                            child: Row(children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelectedTech = !isSelectedTech;
                                    });
                                  },
                                  child: Container(
                                    width: 104,
                                    height: 41,
                                    child: Center(
                                      child: Text(
                                        'Technology',
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 11,
                                            color: isSelectedTech
                                                ? Color(0xFF000000)
                                                : Color(0xFFFFFFFF)),
                                      ),
                                    ),
                                  )),
                            ]),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: isSelectedInfo
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFF0D6AE3),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelectedInfo = !isSelectedInfo;
                                    });
                                  },
                                  child: Container(
                                    width: 105,
                                    height: 41,
                                    child: Center(
                                      child: Text(
                                        'Information',
                                        style: TextStyle(
                                            fontFamily: 'Sora',
                                            fontSize: 11,
                                            color: isSelectedInfo
                                                ? Color(0xFF000000)
                                                : Color(0xFFFFFFFF)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Others',
                                  style: TextStyle(
                                    fontFamily: 'Viga',
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 30,
                                          ),
                                          child:
                                              Image.asset('assets/cover4.png'),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'This is title for topic',
                                                      style: TextStyle(
                                                          fontFamily: 'Viga',
                                                          fontSize: 16),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 40, top: 5),
                                                      child: Icon(Icons
                                                          .bookmark_border),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  'inside our magazine',
                                                  style: TextStyle(
                                                      fontFamily: 'Viga',
                                                      fontSize: 16),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  '12 Nov 2020',
                                                  style: TextStyle(
                                                      fontFamily: 'Sora',
                                                      fontSize: 11,
                                                      color: Color(0xFF5B5B5B)),
                                                ),
                                                SizedBox(height: 40),
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'Sum page : 2',
                                                      style: TextStyle(
                                                          fontFamily: 'Sora',
                                                          fontSize: 11),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 30),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          DetailMagz()));
                                                        },
                                                        child: Container(
                                                          height: 28,
                                                          width: 75,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: Color(
                                                                  0xFF0D6AE3)),
                                                          child: Center(
                                                            child: Text(
                                                              'Read Now',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Sora',
                                                                  fontSize: 9,
                                                                  color: Color(
                                                                      0xFFFFFFFF)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30),
                                          child:
                                              Image.asset('assets/cover4.png'),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'This is title for topic',
                                                      style: TextStyle(
                                                          fontFamily: 'Viga',
                                                          fontSize: 16),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 40, top: 5),
                                                      child: Icon(Icons
                                                          .bookmark_border),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  'inside our magazine',
                                                  style: TextStyle(
                                                      fontFamily: 'Viga',
                                                      fontSize: 16),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  '12 Nov 2020',
                                                  style: TextStyle(
                                                      fontFamily: 'Sora',
                                                      fontSize: 11,
                                                      color: Color(0xFF5B5B5B)),
                                                ),
                                                SizedBox(height: 40),
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'Sum page : 2',
                                                      style: TextStyle(
                                                          fontFamily: 'Sora',
                                                          fontSize: 11),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 30),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          DetailMagz()));
                                                        },
                                                        child: Container(
                                                          height: 28,
                                                          width: 75,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: Color(
                                                                  0xFF0D6AE3)),
                                                          child: Center(
                                                            child: Text(
                                                              'Read Now',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Sora',
                                                                  fontSize: 9,
                                                                  color: Color(
                                                                      0xFFFFFFFF)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30),
                                          child:
                                              Image.asset('assets/cover4.png'),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'This is title for topic',
                                                      style: TextStyle(
                                                          fontFamily: 'Viga',
                                                          fontSize: 16),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 40, top: 5),
                                                      child: Icon(Icons
                                                          .bookmark_border),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  'inside our magazine',
                                                  style: TextStyle(
                                                      fontFamily: 'Viga',
                                                      fontSize: 16),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  '12 Nov 2020',
                                                  style: TextStyle(
                                                      fontFamily: 'Sora',
                                                      fontSize: 11,
                                                      color: Color(0xFF5B5B5B)),
                                                ),
                                                SizedBox(height: 40),
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'Sum page : 2',
                                                      style: TextStyle(
                                                          fontFamily: 'Sora',
                                                          fontSize: 11),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 30),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          DetailMagz()));
                                                        },
                                                        child: Container(
                                                          height: 28,
                                                          width: 75,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: Color(
                                                                  0xFF0D6AE3)),
                                                          child: Center(
                                                            child: Text(
                                                              'Read Now',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Sora',
                                                                  fontSize: 9,
                                                                  color: Color(
                                                                      0xFFFFFFFF)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 63.0,
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF0D6AE3),
                            ),
                            child: Center(
                              child: Text(
                                'Start from zero',
                                style: TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 19.0,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
