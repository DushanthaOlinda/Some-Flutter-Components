import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 250.0,
      height: 150.0,
      padding: const EdgeInsets.all(50.0),
      margin: const EdgeInsets.all(50.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.amber,
        // borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey, width: 6.0),
        shape: BoxShape.circle,
        image: const DecorationImage(
          image: AssetImage("images/bug.png"),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: Offset(5.0, 5.0),
          ),
        ],
      ),
      // child: const Text(
      //   "Boring",
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontSize: 30,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
    ));
  }
}
