import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  String value;

  Game(this.value);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    //change image

    var pathImage = "";

    if (widget.value == "head") {
      pathImage = "images/head.png";
    } else {
      pathImage = "images/tails.png";
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const Text(
            //   "Test",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 40,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [Image.asset(pathImage)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffe2b63a),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("BACK", style: TextStyle(fontSize: 40)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
