import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getView(1 , Colors.purple),
            getView(2 , Colors.tealAccent),
            getView(3 , Colors.deepPurpleAccent),
            getView(4 , Colors.lime),
            getView(5 , Colors.lightBlueAccent),
            getView(6 , Colors.deepOrange),
            getView(7 , Colors.purpleAccent),
          ],
        ),
      )
    ),
  ));
}

Widget getView(int pos , Color color){
  return  Expanded(
    child: TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color)
      ),
      onPressed: (){
        playSound(pos);
      },
      child: Text("Press Here"),
    ),
  );
}

void playSound(int pos) {
  final audioPlayer = AudioCache();
  audioPlayer.play('assets_note$pos.wav');
}