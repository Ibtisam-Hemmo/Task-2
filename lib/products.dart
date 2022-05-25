import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: use_key_in_widget_constructors
class Product extends StatelessWidget {
  static const routeName = '/product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Shop App"),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 15, 63),
      ),
      body: GridView(
        padding: const EdgeInsets.all(40),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => kitchen()),
              );
            },
            child:
                const Text('Kitchens', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 221, 146, 224),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => kitchen()),
              );
            },
            child: const Text('Living Rooms',
                style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 221, 146, 224),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            child:
                const Text('Balconies', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 221, 146, 224),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            child:
                const Text('Bed Rooms', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 221, 146, 224),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Guest Rooms',
                style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 221, 146, 224),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Roof', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 221, 146, 224),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ],
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
      drawer: const Menu(),
    );
  }
}

// ignore: use_key_in_widget_constructors, camel_case_types
class kitchen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                  height: 50,
                  child: Text(
                    'Designs Slider ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              CarouselSlider(
                options: CarouselOptions(
                    autoPlayInterval: Duration(seconds: 1),
                    autoPlay: true,
                    height: 300),
                items: [
                  Image.asset('assets/kitchen.png'),
                  Image.asset('assets/living.jpg'),
                  Image.asset('assets/kitchen.png'),
                  Image.asset('assets/living.jpg'),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                              builder: (BuildContext) => Product()));
                    },
                    child: const Text(
                      'Return to Home Page',
                      style: TextStyle(
                          color: Colors.black,
                          // backgroundColor: Color.fromARGB(255, 219, 192, 192),
                          fontSize: 18),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
