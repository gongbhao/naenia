import 'package:flutter/material.dart';
import 'package:naenia/assets/const.dart';
import 'package:naenia/utilities/classes.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

class AnimeView extends StatefulWidget {
  Anime anime;
  AnimeView({super.key, required this.anime});

  @override
  State<AnimeView> createState() => _AnimeViewState();
}

class _AnimeViewState extends State<AnimeView> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTopActions(),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  spacing: 20,
                  children: [_buildPosterInfo(), _buildDescription()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopActions() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios, size: 20),
            color: COLOR_TEXT_LIGHT,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              isFavorite ? Icons.star : Icons.star_border,
              size: 24,
              color: isFavorite ? COLOR_PRIMARY : COLOR_TEXT_LIGHT,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPosterInfo() {
    return Column(
      children: [
        Container(
          width: 180,
          height: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(widget.anime.coverUrl),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(color: Colors.black.withAlpha(51), blurRadius: 20),
            ],
          ),
        ),

        SizedBox(height: 20),

        Text(
          widget.anime.name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: COLOR_TEXT_LIGHT,
          ),
        ),

        SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.y().format(widget.anime.dateAired!),
              style: TextStyle(fontSize: 16, color: COLOR_GREY),
            ),
            Text(" • ", style: TextStyle(color: COLOR_GREY)),
            Text(
              widget.anime.type ?? "TV",
              style: TextStyle(fontSize: 16, color: COLOR_GREY),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: COLOR_PRIMARY, size: 20),
            SizedBox(width: 4),
            Text(
              widget.anime.score.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: COLOR_PRIMARY,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescription() {
    if (widget.anime.description == null) return SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ReadMoreText(
        widget.anime.description!,
        trimMode: TrimMode.Line,
        trimLines: 5,
        colorClickableText: COLOR_PRIMARY,
        trimCollapsedText: ' Show more',
        trimExpandedText: ' Show less',
        style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.5),
      ),
    );
  }
}
