import 'package:first_flutter_app/form.dart';
import 'package:first_flutter_app/screens/Another.dart';
import 'package:first_flutter_app/screens/Custom.dart';
import 'package:first_flutter_app/screens/Dashboard.dart';
import 'package:first_flutter_app/screens/Home.dart';
import 'package:first_flutter_app/screens/Home2.dart';
import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'My App',
//       themeMode: ThemeMode.system,
//       debugShowCheckedModeBanner: false,
//       home: Custom(),
//     );
//   }
// }

void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title:const Text("Statefull Widgets Flutter -3.1"),
//           centerTitle: true,
//         ),
//         body: const MyAppStateFull(),
//       )
//     );
//   }
// }
//
//
// class MyAppStateFull extends StatefulWidget {
//   const MyAppStateFull({Key? key}) : super(key: key);
//
//   @override
//   State<MyAppStateFull> createState() => _MyAppStateFull();
// }
//
// class _MyAppStateFull extends State<MyAppStateFull> {
//   bool liked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           title: const Text("Nike Shoes"),
//           trailing: IconButton(
//             icon: liked? (const Icon(Icons.favorite)): (const Icon(Icons.favorite_border_outlined)),
//             color: liked? Colors.red: Colors.grey,
//             onPressed: () {
//               setState(() => liked = !liked);
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
