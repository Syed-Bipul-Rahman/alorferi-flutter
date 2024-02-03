import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple calculator',
      theme: ThemeData(
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
  var text1controller = TextEditingController();
  var text2controller = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("calculator"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: text1controller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blue.shade800,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            controller: text2controller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blue.shade800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var a = int.parse(text1controller.text.toString());
                          var b = int.parse(text2controller.text.toString());

                          result = a + b;
                          setState(() {});
                        },
                        child: Text("+"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var a = int.parse(text1controller.text.toString());
                          var b = int.parse(text2controller.text.toString());

                          result = a - b;
                          setState(() {});
                        },
                        child: Text("-"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var a = int.parse(text1controller.text.toString());
                          var b = int.parse(text2controller.text.toString());

                          result = a * b;
                          setState(() {});
                        },
                        child: Text("*"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var a = int.parse(text1controller.text.toString());
                          var b = int.parse(text2controller.text.toString());
                          // double x = a / b;
                          // x.toString();
                          // result = double.parse(x);
                          // setState(() {});
                        },
                        child: Text("/"),
                      ),
                    ],
                  ),
                  Text(
                    "$result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.orange[900], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
