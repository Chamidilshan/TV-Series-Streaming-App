import 'package:flutter/material.dart';
import 'package:tv_series_streaming_app/widgets/UpcomingWidget.dart';
import 'package:tv_series_streaming_app/widgets/NewSeriesWidget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                vertical: 18.0,
                    horizontal: 10.0
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        Text("What to Watch?",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      child: Image.asset('images/profile.png',
                      height: 60.0,
                        width: 60.0,
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 60.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,
                      color: Colors.white54,
                      size: 30.0,
                    ),
                    Container(
                      width: 300.0,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white54),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              UpcomingWidget(),
              SizedBox(
                height: 40.0,
              ),
              NewSeriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
