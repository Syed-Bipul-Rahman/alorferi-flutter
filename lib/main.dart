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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate != null
                  ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                  : "Select a date",
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            //date picker floating action button
            FloatingActionButton(
              onPressed: () async {
                DateTime? datePicker = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2025),
                );

                if (datePicker != null) {
                  setState(() {
                    selectedDate = datePicker;
                  });
                  print(
                      "${datePicker.day}:${datePicker.month}:${datePicker.year}");
                }
              },
              child: Icon(Icons.calendar_month),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              //timepicker
              child: FloatingActionButton(
                onPressed: () async {
                  TimeOfDay? timepicker = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input,
                  );

                  if (timepicker != null) {
                    print(timepicker.hour);
                  }
                },
                child: Icon(Icons.timer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
