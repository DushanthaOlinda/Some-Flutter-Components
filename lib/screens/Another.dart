import 'package:flutter/material.dart';

class Another extends StatelessWidget {
  const Another({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          constraints: const BoxConstraints.expand(
            width: 330,
            height: 450,
          ),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white24,
                blurRadius: 10.0,
                spreadRadius: 5.0,
                offset: Offset(0.0, 2.0),
              ),
            ],
            image: DecorationImage(
              image: AssetImage("images/bug.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Stack(
            children: const [
              Text("The Buggers",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              Positioned(
                top: 20,
                child: Text("The Art of Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Positioned(
                right: 0,
                bottom: 20,
                child: Text("Buggers for life",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text("This is fun",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Stack(
      //     alignment: Alignment.center,
      //     children: [
      //       Container(
      //         height: 300,
      //         width: 200,
      //         color: Colors.green,
      //       ),
      //       Positioned(
      //         bottom: 0,
      //         child: Container(
      //           height: 200,
      //           width: 100,
      //           color: Colors.yellow,
      //         ),
      //       ),
      //       Positioned(
      //         right: 40,
      //         child: Container(
      //           height: 100,
      //           width: 400,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       ],
      //   ),
      //   ),
    );
  }
}
