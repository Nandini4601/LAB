import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switchh/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Text(
                'This is dark theme',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ElevatedButton(
                  child: Text('Light mode'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstRoute()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
