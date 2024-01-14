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
      title: 'Orange shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Mango shop"),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        print("back button pressed");
                      },
                      child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                  InkWell(
                    onTap: () {
                      print("clinked on cart");
                    },
                    child: Text(
                      "আমার কেনাকাটা",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  Icon(Icons.add_shopping_cart_outlined, color: Colors.white),
                ],
              ),
            ),
          ),
          Image.network(
              height: 200,
              "https://stoller.com.au/wp-content/uploads/2020/04/iStock-529964085-scaled.jpg"),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0, // Adjust the blur radius as needed
                    // Adjust the offset as needed
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(8))),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("মূল্য : ১৮০ টাকা",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                            fontSize: 20)),
                    Text("বিদেশি কমলা",
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                            fontSize: 20)),
                    Text("বিক্রিত হয়েছে : ৫৪ বার",
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.grey,
                            fontSize: 16)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      Text("পরিমাণ (কেজি)",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Colors.red,
                              fontSize: 16)),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                          onPressed: () {
                            print("product added to cart");
                          },
                          child: Text(
                            "Add to cart",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 10, color: Colors.grey),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 10),
                      width: 100,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.network(
                              "https://www.iconpacks.net/icons/1/free-best-icon-1364-thumb.png",
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              "গুণে মানে সেরা",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.cyan[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      // color: Colors.cyan[200],
                      width: 100,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.network(
                              "https://th.bing.com/th/id/R.13cf5562530c02305fbe2b2fbd0cf9f8?rik=gZKbXlUzC69NLg&pid=ImgRaw&r=0",
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              "খাঁটি পণ্য",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.amber[700],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 10),
                      //color: Colors.amber[700],
                      width: 100,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/212/212759.png",
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              "ভেজাল মুক্ত",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(height: 100, width: 100, "images/car.png"),
                    Column(
                      children: [
                        Text(
                          "সারা বাংলাদেশে",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Text(
                          "ফ্রি হোম ডেলিভারি!",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                      ),
                      child: Icon(
                        Icons.add_ic_call,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80, left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.red,
                      size: 30,
                    ),
                    Text("Home", style: TextStyle(color: Colors.red)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.message_rounded,
                      color: Colors.red,
                      size: 30,
                    ),
                    Text("Message", style: TextStyle(color: Colors.red)),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text(
                    "অর্ডার করুন",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellow[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),

                  ),
                  child: Text(
                    "অর্ডার করুন",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
