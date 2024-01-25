import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
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

  List<Map<String, dynamic>> products = [];

  @override
  void initState() {
    super.initState();
    fetchProducts(); // Call the method to fetch products when the widget is initialized
  }

  // Method to fetch products from the API
  Future<void> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)["products"];
      setState(() {
        products = jsonData.cast<Map<String, dynamic>>();
      });
    } else {
      // Handle the error
      print('Failed to load products');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          "Dummy shop",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return buildProductItem(products[
              index]); // Call a separate method to build each product item
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: products.length,
      ),
    );
  }

  // Method to build a product item widget
  Widget buildProductItem(Map<String, dynamic> product) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Card(
      elevation: 10,
        // Use a color from the colors list or any color you prefer
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              product["thumbnail"],
              height: 70,
              width: 200,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 5),
            Center(
              child: Text(
                product["title"],
                style: const TextStyle(fontSize: 18,),
                textAlign:TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "\$${product["price"]}",
              style: const TextStyle(fontSize: 15, color: Colors.orange,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
