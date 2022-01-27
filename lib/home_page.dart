import 'dart:math';

import 'package:appheads_or_tail/game.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/heads_tails_logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffe2b63a),
                    ),
                    onPressed: () {
                      var itens = ['head', "tail"];
                      var number = Random().nextInt(itens.length);
                      var result = itens[number];

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Game(result),
                          ));
                    },
                    child: const Text(
                      "PLAY",
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
