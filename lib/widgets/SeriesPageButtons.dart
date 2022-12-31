import 'package:flutter/material.dart';

class SeriesPageButtons extends StatelessWidget {
  const SeriesPageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  spreadRadius: 1.0,
                  blurRadius: 4,
                )
              ]
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 35.0,
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFF292B37),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1.0,
                    blurRadius: 4,
                  )
                ]
            ),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35.0,
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFF292B37),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1.0,
                    blurRadius: 4,
                  )
                ]
            ),
            child: Icon(
              Icons.download,
              color: Colors.white,
              size: 35.0,
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFF292B37),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1.0,
                    blurRadius: 4,
                  )
                ]
            ),
            child: Icon(
              Icons.share,
              color: Colors.white,
              size: 35.0,
            ),
          ),
        ],
      ),
    );
  }
}
