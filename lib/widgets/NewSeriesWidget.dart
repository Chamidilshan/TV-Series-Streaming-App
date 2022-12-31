import 'package:flutter/material.dart';

class NewSeriesWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New TV Series',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('See All',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1; i<6; i++)
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'seriesPage');
                },
                child: Container(
                  width: 190.0,
                  height: 300.0,
                  margin: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF292B37).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                      ),
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                        ),
                        child: Image.asset('images/st$i.jpg',
                          height: 200.0,
                          width: 2300.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 5.0,
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Wednesday',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 21.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('Action/Adventure',
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text('8.5',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16.0,
                                ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
