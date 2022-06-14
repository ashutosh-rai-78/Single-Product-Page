import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:product_page/expanded_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_page/image_carousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  // int _currentIndex = 0;

  List<String> imagesList = [
    "https://source.unsplash.com/random/300x200",
    "https://source.unsplash.com/random/300x200",
    "https://source.unsplash.com/random/300x200",
    "https://source.unsplash.com/random/300x200",
    "https://source.unsplash.com/random/300x200",
    "https://source.unsplash.com/random/300x200",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product Name", textAlign: TextAlign.center),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // productImages(context)
                ImageCarousel(),
                /*Image.network(
                  'https://source.unsplash.com/random/300x200',
                  fit: BoxFit.cover,
                  height: 400,
                )*/
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "50% Off",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "In Stock",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Brand Name",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\u{20B9} 500",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("\u{20B9} 600",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "GST T&C APPLY",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Features & Details",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text("\u2022"),
                          SizedBox(width: 10),
                          Flexible(child: Text("Dummy Text ")),
                          SizedBox(height: 5),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("\u2022"),
                          SizedBox(width: 10),
                          Flexible(child: Text("Dummy Text ")),
                          SizedBox(height: 5),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("\u2022"),
                          SizedBox(width: 10),
                          Flexible(child: Text("Dummy Text ")),
                          SizedBox(height: 5),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("\u2022"),
                          SizedBox(width: 10),
                          Flexible(child: Text("Dummy Text ")),
                          SizedBox(height: 5),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("\u2022"),
                          SizedBox(width: 10),
                          Flexible(child: Text("Dummy Text ")),
                          SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Details",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(
                      width: 120,
                      child: Flexible(child: Text("Brand")),
                    ),
                    Flexible(child: Text("AGL")),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(
                      width: 120,
                      child: Flexible(child: Text("Tile Type")),
                    ),
                    Flexible(child: Text("Wall")),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(
                      width: 120,
                      child: Flexible(child: Text("Product Model")),
                    ),
                    Flexible(child: Text("SUPERBO ART NERO")),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(
                      width: 120,
                      child: Flexible(child: Text("Appearance")),
                    ),
                    Flexible(child: Text("Rich and Seamless Look")),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(
                      width: 120,
                      child: Flexible(child: Text("Resistant")),
                    ),
                    Flexible(child: Text("Scratch, Stain")),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(
                      width: 120,
                      child: Flexible(child: Text("Size")),
                    ),
                    Flexible(child: Text("600 * 300 mm")),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(
                      width: 120,
                      child: Flexible(child: Text("Weight")),
                    ),
                    Flexible(child: Text("16.5 Kgs")),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(
                      width: 120,
                      child: Flexible(child: Text("Thickness")),
                    ),
                    Flexible(child: Text("09 mm")),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.blueAccent,
              primary: Colors.greenAccent,
              onPrimary: Colors.greenAccent,
            ),
            // color: Colors.greenAccent,
            onPressed: (){},
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

productImages(context) {
  return CarouselSlider(
    items: [
      //1st Image of Slider
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
            fit: BoxFit.cover,
          ),
        ),
      ),

      //2nd Image of Slider
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),

      //3rd Image of Slider
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),

      //4th Image of Slider
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),

      //5th Image of Slider
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage("ADD IMAGE URL HERE"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],

    //Slider Container properties
    options: CarouselOptions(
      height: 180.0,
      enlargeCenterPage: true,
      // autoPlay: true,
      aspectRatio: 16 / 9,
      autoPlayCurve: Curves.fastOutSlowIn,
      // enableInfiniteScroll: true,
      // autoPlayAnimationDuration: Duration(milliseconds: 800),
      viewportFraction: 0.8,
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
