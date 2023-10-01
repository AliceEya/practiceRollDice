import 'package:flutter/material.dart';
import 'package:roll_dice/screens/home.dart';

void main (){
  runApp (rolldice());
}

class rolldice extends StatelessWidget {
  const rolldice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
        home: homescreen(
        
        ),
           
    );
  }
}