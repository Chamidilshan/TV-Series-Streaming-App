import 'package:flutter/material.dart';
import 'package:tv_series_streaming_app/widgets/upcoming_widget.dart';
import 'package:tv_series_streaming_app/widgets/new_series_widget.dart';
import 'package:tv_series_streaming_app/widgets/custom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "What to Watch?",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: const Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                    ),
                    icon: Icon(Icons.search_rounded),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              const UpcomingWidget(),
              const SizedBox(height: 20.0),
              const NewSeriesWidget(),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
