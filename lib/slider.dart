import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderPage({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xFF0D6AE3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 100.0,
          ),
          Image.asset(
            image,
            width: width * 0.6,
          ),
          SizedBox(
            height: 100.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 24.0, fontFamily: 'Viga', color: Color(0xFFFFFFFF)),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                height: 1.5,
                fontSize: 12.0,
                fontFamily: 'Sora',
                color: Color(0xFFFFFFFF)
              ),
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(height: 60.0,),
        ],
      ),
    );
  }
}
