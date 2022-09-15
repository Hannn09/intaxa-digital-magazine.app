import 'package:covid/login.dart';
import 'package:covid/magazines.dart';
import 'package:flutter/material.dart';
import 'package:covid/detailmagz.dart';
import 'package:covid/web_view.dart';

class TopicMagz extends StatefulWidget {
  @override
  _TopicMagzState createState() => _TopicMagzState();
}

class _TopicMagzState extends State<TopicMagz> {
  bool isSelectedCovid = false;

  bool isSelectedTech = false;
  bool isSelectedInfo = false;
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  Duration duration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Color(0xFF0D6AE3),
      body: Stack(
        children: <Widget>[menu(context), dashboard(context)],
      ),
      drawer: Drawer(),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 120),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Magazines()));
              },
              child: Container(
                width: 126,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF0D6AE3)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontFamily: 'Viga',
                        fontSize: 18,
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Web()));
              },
              child: Container(
                width: 126,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF0D6AE3)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    'Web View',
                    style: TextStyle(
                        fontFamily: 'Viga',
                        fontSize: 18,
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Container(
                width: 126,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF0D6AE3)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontFamily: 'Viga',
                        fontSize: 18,
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
        duration: duration,
        top: isCollapsed ? 0 : 0.1 * screenHeight,
        bottom: isCollapsed ? 0 : 0,
        left: isCollapsed ? 0 : 0.5 * screenWidth,
        right: isCollapsed ? 0 : -0.5 * screenWidth,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 8,
          color: Color(0xFFFFFFFF),
          child: Column(
            children: <Widget>[
              AnimatedContainer(
                duration: duration,
                height: (isCollapsed
                        ? screenHeight
                        : (screenHeight - (0.1 * screenHeight))) -
                    63.0,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isCollapsed = !isCollapsed;
                                  });
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFFFFFFF)),
                                  child: Center(
                                    child: Image.asset('assets/menu.png'),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: IconButton(
                                  icon: Icon(Icons.search),
                                  onPressed: () {
                                    showSearch(
                                        context: context,
                                        delegate: DataSearch());
                                  }),
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
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 30),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Image.asset(
                                                        'assets/cover.png',
                                                        width: 124,
                                                        height: 154),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 50),
                                                    child: Text(
                                                      'Covid',
                                                      style: TextStyle(
                                                        fontFamily: 'Viga',
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 30),
                                                    child: Text(
                                                      '12 Nov 2020',
                                                      style: TextStyle(
                                                          fontFamily: 'Sora',
                                                          fontSize: 9,
                                                          color: Color(
                                                              0xFF5B5B5B)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                        'assets/cover2.png',
                                                        width: 124,
                                                        height: 154),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 20),
                                                    child: Text(
                                                      'Technology',
                                                      style: TextStyle(
                                                        fontFamily: 'Viga',
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 30),
                                                    child: Text(
                                                      '12 Nov 2020',
                                                      style: TextStyle(
                                                          fontFamily: 'Sora',
                                                          fontSize: 9,
                                                          color: Color(
                                                              0xFF5B5B5B)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                        'assets/cover2.png',
                                                        width: 124,
                                                        height: 154),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 20),
                                                    child: Text(
                                                      'Information',
                                                      style: TextStyle(
                                                        fontFamily: 'Viga',
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 30),
                                                    child: Text(
                                                      '12 Nov 2020',
                                                      style: TextStyle(
                                                          fontFamily: 'Sora',
                                                          fontSize: 9,
                                                          color: Color(
                                                              0xFF5B5B5B)),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10)),
                                              color: isSelectedCovid
                                                  ? Color(0xFF0D6AE3)
                                                  : Color(0xFFFFFFFF)),
                                          child: Row(
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    isSelectedCovid =
                                                        !isSelectedCovid;
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
                                                              ? Color(
                                                                  0xFFFFFFFF)
                                                              : Color(
                                                                  0xFF000000)),
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
                                                  ? Color(0xFF0D6AE3)
                                                  : Color(0xFFFFFFFF)),
                                          child: Row(children: <Widget>[
                                            GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    isSelectedTech =
                                                        !isSelectedTech;
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
                                                              ? Color(
                                                                  0xFFFFFFFF)
                                                              : Color(
                                                                  0xFF000000)),
                                                    ),
                                                  ),
                                                )),
                                          ]),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: isSelectedInfo
                                                ? Color(0xFF0D6AE3)
                                                : Color(0xFFFFFFFF),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    isSelectedInfo =
                                                        !isSelectedInfo;
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
                                                              ? Color(
                                                                  0xFFFFFFFF)
                                                              : Color(
                                                                  0xFF000000)),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                    Container(
                                      height: 400,
                                      child: ListView(
                                        scrollDirection: Axis.vertical,
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 25,
                                                    ),
                                                    child: Image.asset(
                                                        'assets/cover4.png'),
                                                  ),
                                                  Column(
                                                    children: <Widget>[
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'This is title for topic',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Viga',
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            40,
                                                                        top: 5),
                                                                child: Icon(Icons
                                                                    .bookmark_border),
                                                              )
                                                            ],
                                                          ),
                                                          Text(
                                                            'inside our magazine',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Viga',
                                                                fontSize: 16),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Text(
                                                            '12 Nov 2020',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Sora',
                                                                fontSize: 11,
                                                                color: Color(
                                                                    0xFF5B5B5B)),
                                                          ),
                                                          SizedBox(height: 40),
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'Sum page : 2',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Sora',
                                                                    fontSize:
                                                                        11),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        30),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                DetailMagz()));
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    height: 28,
                                                                    width: 75,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                5),
                                                                        color: Color(
                                                                            0xFF0D6AE3)),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        'Read Now',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Sora',
                                                                            fontSize:
                                                                                9,
                                                                            color:
                                                                                Color(0xFFFFFFFF)),
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
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 25),
                                                    child: Image.asset(
                                                        'assets/cover4.png'),
                                                  ),
                                                  Column(
                                                    children: <Widget>[
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'This is title for topic',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Viga',
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            40,
                                                                        top: 5),
                                                                child: Icon(Icons
                                                                    .bookmark_border),
                                                              )
                                                            ],
                                                          ),
                                                          Text(
                                                            'inside our magazine',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Viga',
                                                                fontSize: 16),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Text(
                                                            '12 Nov 2020',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Sora',
                                                                fontSize: 11,
                                                                color: Color(
                                                                    0xFF5B5B5B)),
                                                          ),
                                                          SizedBox(height: 40),
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'Sum page : 2',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Sora',
                                                                    fontSize:
                                                                        11),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        30),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                DetailMagz()));
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    height: 28,
                                                                    width: 75,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                5),
                                                                        color: Color(
                                                                            0xFF0D6AE3)),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        'Read Now',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Sora',
                                                                            fontSize:
                                                                                9,
                                                                            color:
                                                                                Color(0xFFFFFFFF)),
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
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 25),
                                                    child: Image.asset(
                                                        'assets/cover4.png'),
                                                  ),
                                                  Column(
                                                    children: <Widget>[
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'This is title for topic',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Viga',
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            40,
                                                                        top: 5),
                                                                child: Icon(Icons
                                                                    .bookmark_border),
                                                              )
                                                            ],
                                                          ),
                                                          Text(
                                                            'inside our magazine',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Viga',
                                                                fontSize: 16),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Text(
                                                            '12 Nov 2020',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Sora',
                                                                fontSize: 11,
                                                                color: Color(
                                                                    0xFF5B5B5B)),
                                                          ),
                                                          SizedBox(height: 40),
                                                          Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'Sum page : 2',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Sora',
                                                                    fontSize:
                                                                        11),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        30),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                DetailMagz()));
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    height: 28,
                                                                    width: 75,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                5),
                                                                        color: Color(
                                                                            0xFF0D6AE3)),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        'Read Now',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Sora',
                                                                            fontSize:
                                                                                9,
                                                                            color:
                                                                                Color(0xFFFFFFFF)),
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
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailMagz()));
                      },
                      child: Container(
                        height: 63.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20)),
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
        ));
  }
}

class DataSearch extends SearchDelegate<String> {
  final magazines = [
    "Maspion IT",
    "SMKN 1 Purwosari",
    "Maspion Bank",
  ];

  final recentMagazine = ["SMKN 1 Purwosari", "Maspion IT"];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentMagazine
        : magazines.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.history),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
