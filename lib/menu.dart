import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Color(0xFF0D6AE3),
      body: Stack(
        children: <Widget>[
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 70),
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
            onTap: () {},
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
                  color: Color(0xFF0D6AE3)),
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
            onTap: () {},
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
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: isCollapsed ? 0 : 0.1 * screenHeight,
      bottom: isCollapsed ? 0 : 0,
      left: isCollapsed ? 0 : 0.5 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 8,
        color: Color(0xFFFFFFFF),
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
                    child:
                        IconButton(icon: Icon(Icons.search), onPressed: null),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
