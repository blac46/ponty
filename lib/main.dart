import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  List<String> itemsList = [];
  int currentIndex = 5;
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "POYNT+",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
                Positioned(
                  left: 25,
                  child: CircleAvatar(
                    radius: 8,
                  ),
                )
            ]
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search for Something cool",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://images.unsplash.com/photo-1474494819794-90f9664b530d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80"))
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 120,
                  child: Center(
                      child: Text(
                    "Shoe Marathon",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )),
                ),
                Positioned(
                  top: 80,
                  left: 170,
                  child: Center(
                      child: Text(
                    "Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
                
                Positioned(
                  top: 130,
                  left: 150,
                  child: DotsIndicator(
                     dotsCount: 5,
                       position: 2.0,
                          decorator: DotsDecorator(
                            size: const Size.square(9.0),
                            activeSize: const Size(18.0, 9.0),
                            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("See aLL",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
              ],
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage("https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"))),
                            ),
                          ),
                          Positioned(
                            left: 110,
                            top: 70,
                            right: 20,
                            child: Container(
                              height: 40,
                              width: 50,
                              color: Colors.white.withOpacity(0.2),
                              child: Icon(Icons.favorite,color: Colors.white,),
                            ),
                          )
                        ],
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Bags",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Sport Sneakes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Shirt Combo",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
              ],
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.red),
                            ),
                          ),
                          Positioned(
                            left: 110,
                            top: 70,
                            right: 20,
                            child: Container(
                              height: 40,
                              width: 50,
                              color: Colors.white.withOpacity(0.2),
                              child: Icon(Icons.favorite,color: Colors.white,),
                            ),
                          )
                        ],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
