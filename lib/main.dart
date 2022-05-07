import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('D I C E'),
          backgroundColor: Colors.grey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftNo = 1;
  var rightNo = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [

          Expanded(child:
          TextButton(
              onPressed: () {
                setState(() {
                  leftNo= Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$leftNo.png'))),
          Expanded(child:
          TextButton(
              onPressed: () {
                setState(() {
                  rightNo=Random().nextInt(6)+1;
                });

              },
              child: Image.asset('images/dice$rightNo.png'))),
        ]
      ),
       // child: Image.asset('images/dice1.png'),),
    );
  }
}

