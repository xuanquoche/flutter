import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 2;

  void rollDice () {
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/dice-$currentDice.png",
                width: 200,
                ),
                const SizedBox(height: 30),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 20
                    ),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: rollDice,
                  child: const Text('Roll Dice')
                )
            ],
          );
  }
}