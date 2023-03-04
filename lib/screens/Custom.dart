import 'package:flutter/material.dart';

import '../widgets/tile_widget.dart';
import 'Home.dart';


class Custom extends StatelessWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
        centerTitle: true,
      ),
      body: ListView(
        children:[
          TileWidget(title: "Mouse", subtitle: "A4 Tech Mouse", leadingIcon: Icons.mouse, iconColor: Colors.blue, listTileColor: Colors.grey.shade200),
          TileWidget(title: "Keyboard", subtitle: "A4 Tech Keyboard", leadingIcon: Icons.keyboard, iconColor: Colors.blue, listTileColor: Colors.grey.shade200),
          TileWidget(title: "Monitor", subtitle: "A4 Tech Monitor", leadingIcon: Icons.monitor, iconColor: Colors.blue, listTileColor: Colors.grey.shade200),
          TileWidget(title:"Keyboard", subtitle: "A4 Tech Keyboard", leadingIcon: Icons.keyboard, iconColor: Colors.blue, listTileColor: Colors.grey.shade200),
        ],
      ),

    );
  }
}
