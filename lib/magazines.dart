import 'package:covid/topicmagz.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rating_dialog/rating_dialog.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFFFFFF)),
                      child: Center(
                        child: Image.asset('assets/menu.png'),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: IconButton(icon: Icon(Icons.search), onPressed: null),
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
                      'Hai Ninno..',
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
              "assets/cover_magazine.png"
                  "assets/cover_magazine.png"
                  "assets/cover_magazine.png"
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/cover_magazine.png',
                            height: 329,
                            width: 255,
                          ),
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
                              style: TextStyle(fontFamily: 'Sora', fontSize: 8),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelectedShare = !isSelectedShare;
                                  });
                                },
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: isSelectedShare
                                          ? Color(0xFFF2F2F2)
                                          : Color(0xFF0D6AE3),
                                      border: Border.all(
                                          color: isSelectedShare
                                              ? Color(0xFF868686)
                                              : Color(0xFF0D6AE3))),
                                  child: Center(
                                      child: Image.asset(
                                    'assets/share.png',
                                    width: 12,
                                    height: 12,
                                    color: isSelectedShare
                                        ? Color(0xFF000000)
                                        : Color(0xFFFFFFFF),
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
                                    borderRadius: BorderRadius.circular(5),
                                    color: isSelectedSave
                                        ? Color(0xFFF2F2F2)
                                        : Color(0xFF0D6AE3),
                                    border: Border.all(
                                        color: isSelectedSave
                                            ? Color(0xFF868686)
                                            : Color(0xFF0D6AE3))),
                                child: Center(
                                    child: Image.asset(
                                  'assets/bookmared.png',
                                  width: 12,
                                  height: 12,
                                  color: isSelectedSave
                                      ? Color(0xFF000000)
                                      : Color(0xFFFFFFFF),
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(5),
                                      color: isSelectedStar
                                          ? Color(0xFFF2F2F2)
                                          : Color(0xFF0D6AE3),
                                      border: Border.all(
                                          color: isSelectedStar
                                              ? Color(0xFF868686)
                                              : Color(0xFF0D6AE3))),
                                  child: Center(
                                      child: Image.asset(
                                    'assets/stared.png',
                                    width: 12,
                                    height: 12,
                                    color: isSelectedStar
                                        ? Color(0xFF000000)
                                        : Color(0xFFFFFFFF),
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
            height: 25,
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TopicMagz()));
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
                    child: Center(child: Image.asset('assets/download.png')),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
