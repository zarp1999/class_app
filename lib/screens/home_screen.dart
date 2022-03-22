import 'package:flutter/material.dart';
import 'package:na/screens/lyric_screen.dart';
import 'package:na/screens/second_screen.dart';

import '../data/songs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Music"),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => SecondScreen()),
                ),
              );
            },
            child: Center(
              child: Icon(
                Icons.home,
              ),
            ),
          ),
        ),
        body: SongList());
  }
}

class SongList extends StatelessWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songTitles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(songTitles[index]),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LyricSScreen(
                    songTitle: songTitles[index],
                    id: index,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
