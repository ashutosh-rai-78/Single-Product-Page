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
            child: Column(
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
      // bottomNavigationBar: NavigationBar(
      //   labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      //   selectedIndex: _currentIndex,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //       // widget.onChange(index);
      //     });
      //   },
      //   destinations: const [
      //     NavigationDestination(icon: Icon(
      //       Icons.home,
      //     ), label: 'Home'),
      //     NavigationDestination(icon: Icon(
      //       Icons.category,
      //     ), label: 'Category'),
      //     NavigationDestination(icon: Icon(
      //       Icons.favorite,
      //     ), label: 'Favorite'),
      //     NavigationDestination(icon: Icon(
      //       Icons.person,
      //     ), label: 'Profile'),
      //   ],
      // ),
    );
  }
}

fun() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        InkWell(
          splashColor: Colors.red,
          child: Icon(
            Icons.favorite_outline,
            color: Colors.black,
            size: 25.0,
          ),
        ),
      ]);
}
