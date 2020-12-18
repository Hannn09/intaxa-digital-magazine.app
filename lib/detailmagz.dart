import 'package:covid/login.dart';
import 'package:covid/magazines.dart';
import 'package:covid/topicmagz.dart';
import 'package:covid/web_view.dart';
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'dart:async';
// import 'package:webview_flutter/webview_flutter.dart';

class DetailMagz extends StatefulWidget {
  @override
  _DetailMagzState createState() => _DetailMagzState();
}

class _DetailMagzState extends State<DetailMagz> {
  int pageChanged = 0;
  bool isSelectedShare = false;
  bool isSelectedSave = false;
  bool isSelectedStar = false;
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 500);
  PageController pageController = PageController(initialPage: 0);
  // final Completer<WebViewController> _webControl =
  //     Completer<WebViewController>();
  void show() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return RatingDialog(
            icon: Icon(
              Icons.star,
              size: 100,
              color: Color(0xFF0D6AE3),
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
  // void iniState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Color(0xFF0D6AE3),
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
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
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF0D6AE3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20))),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFF0D6AE3)),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/menu.png',
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: IconButton(
                                    icon: Icon(Icons.search),
                                    color: Color(0xFFFFFFFF),
                                    onPressed: () {
                                      showSearch(
                                          context: context,
                                          delegate: DataSearch());
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 650,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/mag/cover_blur.png'),
                                fit: BoxFit.cover)),
                        child: PageView(
                          controller: pageController,
                          onPageChanged: (index) {
                            setState(() {
                              pageChanged = index;
                            });
                          },
                          children: [
                            Image.asset('assets/mag/h1.png'),
                            Image.asset('assets/mag/h2.png'),
                            Image.asset('assets/mag/h3.png'),
                            Image.asset('assets/mag/h4.png'),
                            Image.asset('assets/mag/h5.png'),
                            Image.asset('assets/mag/h6.png'),
                            Image.asset('assets/mag/h7.png'),
                            Image.asset('assets/mag/h8.png'),
                            Image.asset('assets/mag/h9.png'),
                            Image.asset('assets/mag/h10.jpg'),
                            Image.asset('assets/mag/h11.jpg'),
                            Image.asset('assets/mag/h12.png'),
                            Image.asset('assets/mag/h13.png'),
                            Image.asset('assets/mag/h14.png'),
                            Image.asset('assets/mag/h15.png'),
                            Image.asset('assets/mag/h16.png'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                      height: 63.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFF0D6AE3),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: IconButton(
                                icon: Icon(
                                  Icons.skip_previous,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {
                                  pageController.animateToPage(0,
                                      duration: duration,
                                      curve: Curves.easeInOutQuint);
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: IconButton(
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {
                                  pageController.animateToPage(--pageChanged,
                                      duration: duration,
                                      curve: Curves.easeInOutQuint);
                                }),
                          ),
                          Image.asset('assets/mini_intaxa.png'),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {
                                  pageController.animateToPage(++pageChanged,
                                      duration: duration,
                                      curve: Curves.easeInOutQuint);
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: IconButton(
                                icon: Icon(
                                  Icons.skip_next,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {
                                  pageController.animateToPage(15,
                                      duration: duration,
                                      curve: Curves.easeInOutQuint);
                                }),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
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
