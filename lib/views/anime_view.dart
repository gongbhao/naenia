import 'package:flutter/material.dart';
import 'package:naenia/assets/const.dart';
import 'package:naenia/utilities/classes.dart';

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
        title: Text(widget.anime.name, style: TEXT_APPBAR),
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
    );
  }
}
