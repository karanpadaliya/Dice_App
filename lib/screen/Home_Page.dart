import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = Random().nextInt(dice.length);
  int index1 = Random().nextInt(dice.length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff97B7D0).withOpacity(0.6),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xff97B7D0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 70, bottom: 70, right: 20, left: 20),
                child: Text(
                  "Total Value: ${dice[index]["value"] + dice[index1]["value"]}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 30,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    dice[index1]["image"],
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                      color: Colors.blue,
                        blurRadius: 30,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    dice[index]["image"],
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                index = Random().nextInt(dice.length);
                index1 = Random().nextInt(dice.length);
                print("RollDice..............");
                setState(() {});
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 300),
                    child: Stack(
                      children: [
                        Image.asset(
                          "asstes/images/Button.png",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65, top: 25),
                          child: Text(
                            "Roll Dice",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//List of Dice images

List dice = [
  {"image": "asstes/images/1.png", "value": 1},
  {"image": "asstes/images/2.png", "value": 2},
  {"image": "asstes/images/3.png", "value": 3},
  {"image": "asstes/images/4.png", "value": 4},
  {"image": "asstes/images/5.png", "value": 5},
  {"image": "asstes/images/6.png", "value": 6},
];
