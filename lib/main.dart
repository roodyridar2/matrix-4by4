import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matrix/constants.dart';
import 'package:matrix/pages/division/division.dart';
import 'package:matrix/pages/multiply/multiply.dart';
import 'package:matrix/pages/substraction/substraction.dart';
import 'pages/addition/Addition.dart';
import './widget/pageWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './widget/drawerWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matrix"),
        backgroundColor: knavbarColor,
      ),
      backgroundColor: kbackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            // SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Adition()),
                );
              },
              child: const PageWidget("Addition"),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Substraction()),
                );
              },
              child: const PageWidget("Substraction"),
            ),
            const SizedBox(height: 16),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Multiply()),
                );
              },
              child: const PageWidget("Multiply"),
            ),
            const SizedBox(height: 16),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Division()),
                );
              },
              child: const PageWidget("Division"),
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
    ;
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Matrix"),
//         backgroundColor: knavbarColor,
//       ),
//       backgroundColor: kbackgroundColor,
//       body: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Column(
//           children: [
//             // SizedBox(height: 20),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Adition()),
//                 );
//               },
//               child: const PageWidget("Addition"),
//             ),
//             const SizedBox(height: 16),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Substraction()),
//                 );
//               },
//               child: const PageWidget("Substraction"),
//             ),
//             const SizedBox(height: 16),

//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Multiply()),
//                 );
//               },
//               child: const PageWidget("Multiply"),
//             ),
//             const SizedBox(height: 16),

//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Division()),
//                 );
//               },
//               child: const PageWidget("Division"),
//             ),
//           ],
//         ),
//       ),
//       drawer: DrawerWidget(),
//     );
//   }
// }
