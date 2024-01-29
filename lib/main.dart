import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'stack widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("stack widget"),
      ),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.redAccent,
            ),
          ),
        ]),
      ),
    );
  }
}
