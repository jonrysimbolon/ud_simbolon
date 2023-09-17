import 'package:flutter/material.dart';
import 'package:ud_simbolon/header_component.dart';
import 'package:ud_simbolon/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UD. SIMBOLON',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: bgColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const HeaderComponent(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white, // Customize the circle color
              radius: 18, // Adjust the circle size as needed
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search, // Adjust the icon size as needed
                    color: cardColor, // Customize the icon color
                  )),
            ),
          )
        ],
      ),
      body: const Center(
          child: Text(
        'Custom Font',
        style: TextStyle(
          fontSize: 30,
        ),
      )),
    );
  }
}
