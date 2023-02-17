import 'package:flutter/material.dart';
import 'package:tv_series_streaming_app/config/data.dart';
import 'package:tv_series_streaming_app/pages/series_page.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommended',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: seriesList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SeriesPage(serie: seriesList[index]),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10.0),
                width: 150,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'images/${seriesList[index].image}',
                    height: 100.0,
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
