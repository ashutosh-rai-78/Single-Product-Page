import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  // int _currentIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product Name"),
        ),
        body: SingleChildScrollView(
          child: Container(
            // color: Colors.blueAccent,
            child: Stack(
              children: [
                productImages(context, null),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent,
              onPrimary: Colors.greenAccent,
            ),
            // color: Colors.greenAccent,
            onPressed: null,
            child: const Text(
              "ADD TO CART",
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
        ),
      ),
    );
  }
}

productImages(context, Image? image) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 250,
    child: Stack(
      children: [
        Container(
          alignment: Alignment.center,
          child: CarouselSlider.builder(
            itemCount: 6,
            itemBuilder: (context, int itemIndex, int pageViewIndex) {
              return Container(
                child: Center(
                  child: Image.network(
                    'https://source.unsplash.com/random/300x200',
                    fit: BoxFit.cover,
                    height: 400,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 1,
              aspectRatio: 1.0,
            ),
          ),
        ),
        Positioned(
            top: 100,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {},
            )),
        Positioned(
            left: MediaQuery.of(context).size.width - 80,
            top: 100,
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {},
            )),
      ],
    ),
  );
}

fun() {
  return Column(
    children: [
      Image.network(
        'https://source.unsplash.com/random/300x200',
        fit: BoxFit.cover,
        height: 400,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 15),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Brand Name",
            style: TextStyle(
              fontSize: 14,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 3),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "\u{20B9} 500 ",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: Colors.blueAccent,
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "In Stock",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
            /*Text("\u{20B9}600",
                          style:
                              TextStyle(color: Colors.grey, fontSize: 16)),*/
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 3),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "GST T&C APPLY",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 3),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Description",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}
