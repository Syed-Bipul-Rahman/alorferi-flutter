import 'package:flutter/material.dart';

class PersonData {
  static const List<String> persons = [
    "Himel",
    "Imtiaz",
    "Sahinur",
    "Bipul",
    "Rajib",
  ];

  static const List<String> messages = [
    "Ami ullulu software er malik",
    "Duniyar sob kinna nimu, tora sob gorib",
    "Sobcheye dami product ami banai, ami legend",
    "Ami nayok, ami gayok, ami number 1",
    "Sob sundori meye amar jonno pagol",
  ];

  static const List<String> images = [
    'https://media.cnn.com/api/v1/images/stellar/prod/20231218-bill-gates-ai-gfx.jpg?c=16x9&q=h_833,w_1480,c_fill',
    'https://upload.wikimedia.org/wikipedia/commons/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg',
    "https://image.cnbcfm.com/api/v1/image/100496736-steve-jobs-march-2011-getty.jpg?v=1617291443&w=1600&h=900",
    "https://assets.amritobazar.com/public/images/2021-09-05/RtYS1r8dPEAk1mmbiVMMlpjIKCfzTrJq0UqdAKMt.jpg",
    'https://upload.wikimedia.org/wikipedia/commons/6/63/Zayed_Khan%2C_Dhaka_2018_%281%29_%28cropped%29.jpg',
  ];
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Future Guys',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text(
          "Future Guys",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          ActivePersons(),
          UserChats(),
        ],
      ),
    );
  }
}

class ActivePersons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 150,
            color: Colors.black12,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: PersonData.persons.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(PersonData.images[index]),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        PersonData.persons[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class UserChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(PersonData.images[index]),
            ),
            title: Text(PersonData.persons[index]),
            subtitle: Text(PersonData.messages[index]),
          );
        },
        itemCount: PersonData.persons.length,
      ),
    );
  }
}
