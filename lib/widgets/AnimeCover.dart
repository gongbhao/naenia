import 'package:flutter/material.dart';
import 'package:naenia/utilities/classes.dart';
import 'package:naenia/views/anime_view.dart';

class AnimeCover extends StatelessWidget {
  final Anime anime;

  const AnimeCover({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AnimeView(anime: anime)),
        );
      },
      child: Container(
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
      ),
    );
  }
}
