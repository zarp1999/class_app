import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:na/data/lyrics.dart';
import 'package:na/data/songs.dart';
import 'package:google_fonts/google_fonts.dart';

class LyricSScreen extends StatelessWidget {
  const LyricSScreen({
    Key? key,
    required this.songTitle,
    required this.id,
  }) : super(key: key);
  final String songTitle;
  final int id;
  @override
  Widget build(BuildContext context) {
    final lyrics = idToLyrics[id] ?? 'lyrics missing';
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(songTitle)),
      ),
      body: Lyrics(lyrics: lyrics),
    );
  }
}

class Lyrics extends StatelessWidget {
  const Lyrics({
    Key? key,
    required this.lyrics,
    
  }) : super(key: key);

  final String lyrics;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(lyrics,
          style: GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
