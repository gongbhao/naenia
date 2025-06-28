import 'package:flutter/material.dart';
import 'package:naenia/utilities/classes.dart';

class AnimeCover extends StatelessWidget {
  final Anime anime;

  const AnimeCover({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(anime.coverUrl),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      // Optionally, overlay title or other info here
    );
  }
}
