import 'dart:async';
import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:wishes/NextScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ConfettiController _controllerCenterRight;
  late ConfettiController _confettiControllerLeft;
  late Timer _timer;
  int _start = 1;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              if (_start < 1) {
                _controllerCenterRight.play();
                _confettiControllerLeft.play();
                timer.cancel();
              } else {
                _start = _start - 1;
              }
            }));
  }

  @override
  void initState() {
    _controllerCenterRight =
        ConfettiController(duration: const Duration(seconds: 10));
    _confettiControllerLeft =
        ConfettiController(duration: const Duration(seconds: 10));
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _confettiControllerLeft.dispose();
    _controllerCenterRight.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    startTimer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Center(
            child: Text(
          " ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      bottomNavigationBar: Container(
        height: 40,
        child: const BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.pinkAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NextScreen()));
        },
        backgroundColor: const Color(0xFF13195b),
        child: const Icon(
          Icons.play_circle_outlined,
          size: 40,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 410,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/jgroup.png"), fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "$_start",
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: ConfettiWidget(
                    confettiController: _controllerCenterRight,
                    blastDirection: pi,
                    particleDrag: 0.05,
                    emissionFrequency: 0.05,
                    numberOfParticles: 20,
                    gravity: 0.05,
                    shouldLoop: false,
                    colors: const [
                      Colors.green,
                      Colors.blue,
                      Colors.pink,
                      Colors.red,
                      Colors.cyan
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ConfettiWidget(
                    confettiController: _controllerCenterRight,
                    blastDirection: 0,
                    emissionFrequency: 0.6,
                    minimumSize: const Size(10, 10),
                    numberOfParticles: 1,
                    gravity: 0.1,
                    colors: const [
                      Colors.green,
                      Colors.blue,
                      Colors.pink,
                      Colors.red,
                      Colors.cyan
                    ],
                  ),
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 180),
                      child: Text(
                        "Happy",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color(0xff13195b),
                            fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Birthday...!!!",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color(0xff13195b),
                            fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: Text(
                        "Princess...💕",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color(0xff13195b),
                            fontSize: 40),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
