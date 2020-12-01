import 'package:covid/login.dart';
import 'package:covid/magazines.dart';
import 'package:covid/topicmagz.dart';
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class DetailMagz extends StatefulWidget {
  @override
  _DetailMagzState createState() => _DetailMagzState();
}

class _DetailMagzState extends State<DetailMagz> {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TopicMagz()));
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
                    'Most Popular',
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
              onTap: () {},
              child: Container(
                width: 126,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF3E90FC)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    'Developer',
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
                                      horizontal: 25),
                                  child: Icon(
                                    Icons.search,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.asset('assets/detail_magz.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            'This is title for topic inside our\n magazine',
                                            style: TextStyle(
                                                fontFamily: 'Viga',
                                                fontSize: 22),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                child: Text(
                                                  '12 Nov 2020',
                                                  style: TextStyle(
                                                      fontFamily: 'Sora',
                                                      fontSize: 15,
                                                      color: Color(0xFF505050)),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 60),
                                                child: Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
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
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: isSelectedShare
                                                                  ? Color(
                                                                      0xFFF2F2F2)
                                                                  : Color(
                                                                      0xFF0D6AE3),
                                                              border: Border.all(
                                                                  color: isSelectedShare
                                                                      ? Color(
                                                                          0xFF868686)
                                                                      : Color(
                                                                          0xFF0D6AE3))),
                                                          child: Center(
                                                            child: Image.asset(
                                                                'assets/share.png',
                                                                width: 12,
                                                                height: 12,
                                                                color: isSelectedShare
                                                                    ? Color(
                                                                        0xFF000000)
                                                                    : Color(
                                                                        0xFFFFFFFF)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isSelectedSave =
                                                                !isSelectedSave;
                                                          });
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: isSelectedSave
                                                                  ? Color(
                                                                      0xFFF2F2F2)
                                                                  : Color(
                                                                      0xFF0D6AE3),
                                                              border: Border.all(
                                                                  color: isSelectedSave
                                                                      ? Color(
                                                                          0xFF868686)
                                                                      : Color(
                                                                          0xFF0D6AE3))),
                                                          child: Center(
                                                            child: Image.asset(
                                                                'assets/bookmared.png',
                                                                width: 12,
                                                                height: 12,
                                                                color: isSelectedSave
                                                                    ? Color(
                                                                        0xFF000000)
                                                                    : Color(
                                                                        0xFFFFFFFF)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          isSelectedStar =
                                                              !isSelectedStar;
                                                          show();
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 24,
                                                        height: 24,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            color: isSelectedStar
                                                                ? Color(
                                                                    0xFFF2F2F2)
                                                                : Color(
                                                                    0xFF0D6AE3),
                                                            border: Border.all(
                                                                color: isSelectedStar
                                                                    ? Color(
                                                                        0xFF868686)
                                                                    : Color(
                                                                        0xFF0D6AE3))),
                                                        child: Center(
                                                          child: Image.asset(
                                                              'assets/stared.png',
                                                              width: 12,
                                                              height: 12,
                                                              color: isSelectedStar
                                                                  ? Color(
                                                                      0xFF000000)
                                                                  : Color(
                                                                      0xFFFFFFFF)),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Nunc commodo fringilla\nefficitur. Mauris gravida leo sed risus\nsollicitudin tincidunt. Proin quis arcu\nconvallis, fringilla sem non, pharetra urna.',
                                        style: TextStyle(
                                          fontFamily: 'Sora',
                                          fontSize: 13,
                                        ),
                                      ),
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
                                onPressed: null),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: IconButton(
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: null),
                          ),
                          Image.asset('assets/mini_intaxa.png'),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: null),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: IconButton(
                                icon: Icon(
                                  Icons.skip_next,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: null),
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
