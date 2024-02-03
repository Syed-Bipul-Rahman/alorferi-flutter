import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Homepage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(

        children: [
          Center(
            child: Image.network(
              width: 200,
              height: 200,

              "https://www.torbayfruitsales.co.uk/wp-content/uploads/2023/05/mango3.jpg",
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
