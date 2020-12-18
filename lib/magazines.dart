import 'package:covid/login.dart';
import 'package:covid/topicmagz.dart';
import 'package:covid/web_view.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rating_dialog/rating_dialog.dart';

class Magazines extends StatefulWidget {
  @override
  _MagazinesState createState() => _MagazinesState();
}

class _MagazinesState extends State<Magazines> {
  bool isSelectedShare = false;
  bool isSelectedSave = false;
  bool isSelectedStar = false;
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 500);

  void show() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return RatingDialog(
            icon: Image.asset(
              'assets/mag/rating.png',
              width: 200,
              height: 200,
            ),
            title: 'Anda suka dengan majalah kami?',
            description: 'Berikan ratingmu kepada majalah kami',
            submitButton: 'Submit',
            onSubmitPressed: (int rating) {
              print('onSubmitPressed: rating = $rating');
            },
          );
        });
  }

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
              onTap: () {},
              child: Container(
                width: 126,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF3E90FC)),
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
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {
                                showSearch(
                                    context: context, delegate: DataSearch());
                              }),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Hi...',
                                style: TextStyle(
                                  fontFamily: 'Viga',
                                  fontSize: 34,
                                ),
                              ),
                              Text(
                                'Choose the magazines',
                                style: TextStyle(
                                  fontFamily: 'Viga',
                                  fontSize: 22,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 500,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.7,
                          initialPage: 0,
                          reverse: true,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal),
                      items: [
                        "assets/mag/cover_radius.png",
                        "assets/cover_magazine.png",
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      i,
                                      height: 300,
                                      width: 240,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Magazine Maspion IT',
                                    style: TextStyle(
                                      fontFamily: 'Viga',
                                      fontSize: 24.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '12 Nov 2020',
                                    style: TextStyle(
                                      fontFamily: 'Sora',
                                      fontSize: 11.0,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFFD720),
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFFD720),
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFFD720),
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFFD720),
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Color(0xFFFFD720),
                                        size: 15,
                                      ),
                                      Text(
                                        '4,5 / 5,0',
                                        style: TextStyle(
                                            fontFamily: 'Sora', fontSize: 8),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isSelectedShare =
                                                  !isSelectedShare;
                                            });
                                          },
                                          child: Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: isSelectedShare
                                                    ? Color(0xFF0D6AE3)
                                                    : Color(0xFFF2F2F2),
                                                border: Border.all(
                                                    color: isSelectedShare
                                                        ? Color(0xFF0D6AE3)
                                                        : Color(0xFF868686))),
                                            child: Center(
                                                child: Image.asset(
                                              'assets/share.png',
                                              width: 12,
                                              height: 12,
                                              color: isSelectedShare
                                                  ? Color(0xFFFFFFFF)
                                                  : Color(0xFF000000),
                                            )),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isSelectedSave = !isSelectedSave;
                                          });
                                        },
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: isSelectedSave
                                                  ? Color(0xFF0D6AE3)
                                                  : Color(0xFFF2F2F2),
                                              border: Border.all(
                                                  color: isSelectedSave
                                                      ? Color(0xFF0D6AE3)
                                                      : Color(0xFF868686))),
                                          child: Center(
                                              child: Image.asset(
                                            'assets/bookmared.png',
                                            width: 12,
                                            height: 12,
                                            color: isSelectedSave
                                                ? Color(0xFFFFFFFF)
                                                : Color(0xFF000000),
                                          )),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isSelectedStar = !isSelectedStar;
                                              show();
                                            });
                                          },
                                          child: Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: isSelectedStar
                                                    ? Color(0xFF0D6AE3)
                                                    : Color(0xFFF2F2F2),
                                                border: Border.all(
                                                    color: isSelectedStar
                                                        ? Color(0xFF0D6AE3)
                                                        : Color(0xFF868686))),
                                            child: Center(
                                                child: Image.asset(
                                              'assets/stared.png',
                                              width: 12,
                                              height: 12,
                                              color: isSelectedStar
                                                  ? Color(0xFFFFFFFF)
                                                  : Color(0xFF000000),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
                Container(
                  width: 360.0,
                  height: 73,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopicMagz()));
                          },
                          child: Container(
                            height: 54.0,
                            width: 273.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF0D6AE3),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                'Read Now',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 16.0,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 54.0,
                          width: 57.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFE4E4E4),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child:
                              Center(child: Image.asset('assets/download.png')),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
