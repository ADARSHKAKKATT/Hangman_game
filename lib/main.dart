import 'package:flutter/material.dart';
import 'package:hangman_game/model_class.dart';
import 'package:hangman_game/figure.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hangman(),
    );
  }
}

class Hangman extends StatefulWidget {
  const Hangman({Key? key}) : super(key: key);

  @override
  State<Hangman> createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {

  // bool vis = false;
  int count = 0;
  bool head = false;
  bool body = false;
  bool la = false;
  bool ra = false;
  bool ll = false;
  bool rl = false;
  bool lttr1 = false;
  bool lttr2 = false;
  bool lttr3 = false;
  bool lttr4 = false;
  bool lttr5 = false;
  bool lttr6 = false;
  bool lttr7 = false;


  design(String a) {
    return InkWell(
      onTap: (){
        setState(() {
          if (a == 'F') {
            lttr1 = true;
          } else if (a == 'L') {
            lttr2 = true;
          } else if (a == 'U') {
            lttr3 = true;
          } else if (a == 'T') {
            lttr4 = true;
            lttr5=true;
          } else if (a == 'E') {
            lttr6 = true;
          } else if (a == 'R') {
            lttr7 = true;
          } else {
            count = count + 1;
            if (count == 1) {
              head=true;
            }
            else if (count == 2) {
              body = true;
            } else if (count == 3) {
              la = true;
            } else if (count == 4) {
              ra = true;
            } else if (count == 5) {
              ll = true;
            } else if (count == 6) {
              rl = true;
            }

          }
        });
      },
      child: Container(
          color: Colors.black,
          height: 40,
          child:
          Center(
            child: Text(
              a,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          )
      ),
    );
  }

  letter(String a,bool vis) {
    return InkWell(
      onTap: (){

      },
      child: Container(
          color: Colors.black,
          height: 40,
          child:
              Center(
                child: Visibility(
                  visible: vis,
                  child: Text(
                    a,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              )),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Center(
                child: Container(
                  color: Colors.greenAccent,
                  height: 250,
                  width: double.maxFinite,
                  child: Center(
                    child: Stack(
                      children: [
                        Image.asset("img/hang.png"),
                        Visibility(
                            visible: head, child: Image.asset("img/head.png")),
                        Visibility(
                            visible: body, child: Image.asset("img/body.png")),
                        Visibility(
                            visible: la, child: Image.asset("img/la.png")),
                        Visibility(
                            visible: ra, child: Image.asset("img/ra.png")),
                        Visibility(
                            visible: ll, child: Image.asset("img/ll.png")),
                        Visibility(
                            visible: rl, child: Image.asset("img/rl.png")),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 7,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    letter('F',lttr1),
                    letter('L',lttr2),
                    letter('U',lttr3),
                    letter('T',lttr4),
                    letter('T',lttr5),
                    letter('E',lttr6),
                    letter('R',lttr7),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 6,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    design('A'),
                    design('B'),
                    design('C'),
                    design('D'),
                    design('E'),
                    design('F'),
                    design('G'),
                    design('H'),
                    design('I'),
                    design('J'),
                    design('K'),
                    design('L'),
                    design('M'),
                    design('N'),
                    design('O'),
                    design('P'),
                    design('Q'),
                    design('R'),
                    design('S'),
                    design('T'),
                    design('U'),
                    design('V'),
                    design('W'),
                    design('X'),
                    design('Y'),
                    design('Z'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
