import 'dart:math';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
   homescreen({super.key});
  
@override
  State<homescreen> createState() => _homescreenState();
}
class _homescreenState extends State<homescreen> {
int activediceface = 0;
List<String> dice =[
'https://commons.wikimedia.org/wiki/Category:Dice_faces_(Kismet)#/media/File:Kismet-Ace.png',
'https://commons.wikimedia.org/wiki/Category:Dice_faces_(Kismet)#/media/File:Kismet-Deuce.png',
'https://commons.wikimedia.org/wiki/Category:Dice_faces_(Kismet)#/media/File:Kismet-Trey.png',
'https://commons.wikimedia.org/wiki/Category:Dice_faces_(Kismet)#/media/File:Kismet-Four.png',
'https://commons.wikimedia.org/wiki/Category:Dice_faces_(Kismet)#/media/File:Kismet-Five.png',
'https://commons.wikimedia.org/wiki/Category:Dice_faces_(Kismet)#/media/File:Kismet-Six.png',
'https://pngimg.com/uploads/dice/dice_PNG49.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 147, 51),
        title: const Text('Lets play a game',
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 25,
        ),
        ),
        leading: const Icon(Icons.ac_unit_outlined),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
             begin: Alignment.topLeft,
          end: Alignment.bottomRight,
            colors:[
             Color.fromARGB(255, 255, 122, 122),
             Color.fromARGB(255, 246, 121, 44),
          ]),
        ),
        child:  Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
             const Text(
                  "Roll the Dice",
                  style: TextStyle (
                      fontSize: 25,
                      fontWeight:  FontWeight.normal,
                      color: Colors.white,
                  ),  
                  ),
                  SizedBox(
                    height: 40,
                  ),
            Image.network(dice[activediceface]),
            TextButton(
              onPressed:(){
                print('button was pressed');
                var randNum = Random().nextInt(7);
                setState(() {
                  activediceface = randNum;
                });
              },
              child: const Text("ROLL")),
          ]),
      ),
    ),
    );
  }
}