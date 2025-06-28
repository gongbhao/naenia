import 'package:flutter/material.dart';
import 'package:naenia/assets/const.dart';

class AnimeCover extends StatelessWidget {
  const AnimeCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: COLOR_PRIMARY,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(child: Text('Anime', style: TEXT_BODY_DARK)),
    );
  }
}
