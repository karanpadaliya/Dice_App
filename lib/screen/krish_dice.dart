import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = Random().nextInt(dice.length);
  int index1 = Random().nextInt(dice.length);

  double dr = 0;
  double rot = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Dice App",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "images/Background.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Total Amount: ${dice[index]["value"] + dice[index1]["value"]}",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Transform.rotate(
                    angle: dr / 6 * pi,
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 15,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Image.asset(dice[index1]["image"]),
                    ),
                  ),
                  Transform.rotate(
                    angle: dr / 6 * pi,
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 15,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Image.asset(dice[index]["image"]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 280,
              ),
              InkWell(
                onTap: () {
                  index = Random().nextInt(dice.length);
                  index1 = Random().nextInt(dice.length);
                  timer();
                  rot = 0;
                  setState(() {});
                },
                child: Stack(
                  children: [
                    Image.asset("images/Button.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 75, top: 28),
                      child: Text(
                        "Roll Dice",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void timer() async {
    await Future.delayed(Duration(milliseconds: 30), () {});
    rot++;
    dr = rot;
    if (rot < 12) {
      timer();
    }

    setState(() {});
  }
}

List dice=[
  {"image": "images/1.png", "value": 1},
  {"image": "images/2.png", "value": 2},
  {"image": "images/3.png", "value": 3},
  {"image": "images/4.png", "value": 4},
  {"image": "images/5.png", "value": 5},
  {"image": "images/6.png", "value": 6},
];