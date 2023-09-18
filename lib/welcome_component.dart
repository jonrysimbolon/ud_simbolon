import 'package:flutter/material.dart';
import 'package:ud_simbolon/utils.dart';

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: cardColor,
          child: const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to UD. Simbolon',
                    style: TextStyle(
                        fontFamily: fontTitleStr, color: Colors.white),
                    selectionColor: Colors.blue,
                  ),
                ],
              ))),
    );
  }
}
