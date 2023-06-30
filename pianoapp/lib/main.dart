import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: getFlatUI(context),
            )),
            Expanded(
                child: Column(
              children: getNoteUI(context),
            )),
          ],
        ),
      ),
    );
  }
}

List<Widget> getFlatUI(context) {
  List<Widget> item = [];
  for (var i = 0; i <= 24; i++) {
    item.add(
      Expanded(
        child: GestureDetector(
          onTap: () {
            AssetsAudioPlayer.newPlayer().open(Audio("assets/flat$i.mp3"));
          },
          child: Container(
            height: 29.5,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    width: 5,
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                )),
          ),
        ),
      ),
    );
  }
  return item;
}

List<Widget> getNoteUI(context) {
  List<Widget> item = [];
  for (var i = 0; i <= 35; i++) {
    item.add(
      Expanded(
        child: GestureDetector(
          onTap: () {
            AssetsAudioPlayer.newPlayer().open(Audio("assets/note$i.mp3"));
          },
          child: Container(
              height: MediaQuery.of(context).size.height / 38,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20))),
        ),
      ),
    );
  }
  return item;
}
