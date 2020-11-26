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
      appBar: AppBar(
        backgroundColor: Color(0xFF0D6AE3),
        leading: Image.asset(
          'assets/menu.png',
          color: Color(0xFFFFFFFF),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Image.asset('assets/detail_magz.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 130),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'This is title for topic inside our\n magazine',
                                style:
                                    TextStyle(fontFamily: 'Viga', fontSize: 22),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    child: Row(
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
                                                        : Color(0xFFFFFFFF)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
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
                                                      BorderRadius.circular(5),
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
                                                        : Color(0xFFFFFFFF)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
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
                                                      : Color(0xFFFFFFFF)),
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
                          padding: const EdgeInsets.symmetric(horizontal: 20),
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
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 63.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFF0D6AE3),
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.skip_previous,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  onPressed: null),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.chevron_left,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  onPressed: null),
                            ),
                            Image.asset('assets/mini_intaxa.png'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  onPressed: null),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
      ),
    );
  }
}
