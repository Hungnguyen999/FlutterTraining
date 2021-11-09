import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void runPlayer(fileName) {
    final player = AudioCache();
    player.play('$fileName.wav');
  }

  FlatButton buildItem({imageURL, fileName, artistName}) {
    return FlatButton(
      onPressed: () {
        runPlayer(fileName);
      },
      child: Row(
        children: [
          Image.asset(
            'images/$imageURL.jpg',
            height: 150,
            width: 150,
          ),
          Text(artistName),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      buildItem(
                        imageURL: 'sontung',
                        fileName: 'muonroimasaocon',
                        artistName: 'Son tung MTP',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
