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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naenia", style: TEXT_APPBAR),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('lib/assets/logo.jpg', height: 20, width: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: AspectRatio(
                            aspectRatio: 0.65,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(widget.anime.coverUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    widget.anime.name,
                                    style: TEXT_BODY_BOLD,
                                  ),
                                ),
                                Text(
                                  "Date aired: ${DateFormat.yMMMd().format(widget.anime.dateAired!)}",
                                  style: TEXT_BODY,
                                ),
                                Text(
                                  "Type: ${widget.anime.type}",
                                  style: TEXT_BODY,
                                ),
                                Text(
                                  "Studios: ${widget.anime.studios}",
                                  style: TEXT_BODY,
                                ),
                                Text(
                                  "Status: ${widget.anime.status}",
                                  style: TEXT_BODY,
                                ),
                                Text(
                                  "Type: ${widget.anime.genres!.join(", ")}",
                                  style: TEXT_BODY,
                                ),
                                Text(
                                  "Score: ${widget.anime.score}",
                                  style: TEXT_BODY,
                                ),
                                Text(
                                  "Episodes: ${widget.anime.episodes}",
                                  style: TEXT_BODY,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ReadMoreText(
                    widget.anime.description!,
                    trimMode: TrimMode.Line,
                    trimLines: 5,
                    colorClickableText: COLOR_PRIMARY,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    style: TEXT_BODY,
                  ),
                  SizedBox(height: 70), // Add some space to prevent overlap
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Material(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: COLOR_PRIMARY,
                          ),
                          child: Text("GUARDA", style: TEXT_BODY_BOLD_DARK),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Material(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star_border_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
