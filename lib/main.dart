import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(backgroundColor: Colors.black,
        body: SafeArea(
            child: Xylophone()),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playsound (int notenumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$notenumber.wav'));
  }

  Expanded eachKey ({required Color keycolour, required int notenumber}){
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(keycolour)),
          onPressed: (){
            playsound(notenumber);
          }, child: const Text('')
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        eachKey(keycolour: Colors.red, notenumber: 1),
        eachKey(keycolour: Colors.orange, notenumber: 2),
        eachKey(keycolour: Colors.yellow, notenumber: 3),
        eachKey(keycolour: Colors.green, notenumber: 4),
        eachKey(keycolour: Colors.teal, notenumber: 5),
        eachKey(keycolour: Colors.blue, notenumber: 6),
        eachKey(keycolour: Colors.purple, notenumber: 7),
      ],
    );
  }
}
