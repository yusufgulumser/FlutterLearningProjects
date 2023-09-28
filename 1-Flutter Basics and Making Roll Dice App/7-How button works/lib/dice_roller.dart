import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {                                    /// statefulwidget allows data to change

  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {                             /// XState class is belong to X class because '_' and 'State' makes it like that

  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {                                                         /// reexecute the state below. So the changes here will be updated.
      activeDiceImage = 'assets/images/dice-4.png';
    });
  }

  @override
  Widget build(context) {
    return Column(                                                        
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 25),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('roll'))
      ],
    );
  }
}
