import 'package:covid/slider.dart';
import 'package:flutter/material.dart';
import 'package:covid/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
      title: "Edukatif",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum metus quis sem sodales commodo.",
      image: "assets/educatif.png",
    ),
    SliderPage(
      title: "Konten Inspiratif",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum metus quis sem sodales commodo.",
      image: "assets/konten_inspiratif.png",
    ),
    SliderPage(
      title: "Uptodate",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum metus quis sem sodales commodo.",
      image: "assets/uptodate.png",
    ),
  ];

  _OnChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: _OnChanged,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              InkWell(
                onTap: () {
                  if (_currentPage != 2) {
                    _currentPage++;
                    _controller.nextPage(
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOutQuint);
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 38.0,
                  alignment: Alignment.center,
                  width: (_currentPage == (_pages.length - 1)) ? 257 : 257,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                          "Mulai",
                          style: TextStyle(fontFamily: 'Viga', fontSize: 14.0),
                        )
                      : Text(
                          "Lanjutkan",
                          style: TextStyle(fontFamily: 'Viga', fontSize: 14.0),
                        ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_pages.length, (int index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 7.0,
                    width: (index == _currentPage) ? 16 : 7,
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (index == _currentPage)
                            ? Color(0xFFFFFFFF)
                            : Color(0xFFFFFFFF)),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
