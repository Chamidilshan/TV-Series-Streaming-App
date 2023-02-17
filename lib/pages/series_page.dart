import 'package:flutter/material.dart';
import 'package:tv_series_streaming_app/config/colors.dart';
import 'package:tv_series_streaming_app/model/movie_model.dart';
import 'package:tv_series_streaming_app/widgets/custom_nav_bar.dart';
import 'package:tv_series_streaming_app/widgets/serie_page_button.dart';
import 'package:tv_series_streaming_app/widgets/recommended_widget.dart';

class SeriesPage extends StatelessWidget {
  final Movie serie;
  const SeriesPage({
    super.key,
    required this.serie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              'images/${serie.image}',
              height: 280.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/${serie.image}',
                            height: 250.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 50.0, top: 70.0),
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 3.0,
                                blurRadius: 8.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(180),
                            child: MaterialButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              child: const Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.white,
                                size: 60.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 120),
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: kDarkBlue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SeriePageButton(icon: Icons.add_rounded),
                        SeriePageButton(icon: Icons.favorite_border_rounded),
                        SeriePageButton(icon: Icons.download_rounded),
                        SeriePageButton(icon: Icons.share_rounded),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          serie.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        const Text(
                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const RecommendWidget(),
                  const SizedBox(height: 60.0),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
