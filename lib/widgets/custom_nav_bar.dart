import 'package:flutter/material.dart';
import 'package:tv_series_streaming_app/config/colors.dart';
import 'package:tv_series_streaming_app/pages/categorie_page.dart';
import 'package:tv_series_streaming_app/pages/home_page.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: const BoxDecoration(
        color: kDarkBlue,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          NavBarItem(
            pageToPush: HomePage(),
            icon: Icons.home_rounded,
          ),
          NavBarItem(
            pageToPush: CategoryPage(),
            icon: Icons.category_rounded,
          ),
          NavBarItem(
            pageToPush: HomePage(), // No page yet
            icon: Icons.favorite_border_rounded,
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final Widget pageToPush;
  final IconData icon;
  const NavBarItem({
    super.key,
    required this.pageToPush,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pageToPush,
          ),
        );
      },
      icon: Icon(
        icon,
        size: 27.5,
        color: Colors.white,
      ),
    );
  }
}
