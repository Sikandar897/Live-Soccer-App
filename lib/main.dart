import 'package:flutter/material.dart';

import 'services/soccer.dart';
import 'widgets/body.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  const SoccerApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: const Text(
          "SOCCERBOARD",
          style: TextStyle(
          //  color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: SoccerApi().getAllMatches(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ignore: avoid_print
            print((snapshot.data)?.length);
            return pageBody(snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}