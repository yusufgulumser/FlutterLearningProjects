import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  void rollDice() {}
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(                                                /// center can have only 1 child so we are using column to add more widget
          

          mainAxisSize: MainAxisSize.min,                             /// For centering the text

          

          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            TextButton(
                onPressed: rollDice,                                    /// when we press the button it calls the rollDice function
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top: 25),            /// adds padding between dice and text
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('roll'))

            
          ],
        ),
      ),
    );
  }
}
