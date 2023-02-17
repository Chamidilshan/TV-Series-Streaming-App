import 'package:flutter/material.dart';

class SeriePageButton extends StatelessWidget {
  final IconData icon;
  const SeriePageButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.white,
        size: 27.5,
      ),
    );
  }
}
