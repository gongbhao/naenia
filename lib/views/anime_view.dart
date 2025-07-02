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
        child: Column(
          children: [
            _buildTopActions(),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    _buildPosterInfo(),
                    SizedBox(height: 20),
                    _buildDescription(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: _buildModalButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopActions() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
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
          width: 200,
          height: 300,
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

        Text(widget.anime.name, style: TEXT_DETAIL_NAME),

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
        style: TEXT_DETAIL_DESC,
      ),
    );
  }

  Widget _buildModalButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          buildEpisodesModal(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: COLOR_BACKGROUND, // Dark background
          elevation: 5,
          shadowColor: Colors.black.withAlpha((0.3 * 255).toInt()),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text("Watch", style: TEXT_BODY_BOLD_DARK),
      ),
    );
  }

  Future<void> buildEpisodesModal(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 700,
          width: double.infinity,
          color: COLORS_WHISPER,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Episodes', style: TEXT_SECTION),
                Text("placeholder: list of episodes"),
              ],
            ),
          ),
        );
      },
    );
  }
}
