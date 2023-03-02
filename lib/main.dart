import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'RequestBottomSheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  var elevationValue = 2.0;
  int currentIndex = 0;

  List<Widget> reviewIcon = [
    const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://www.motorbeam.com/wp-content/uploads/Honda-Activa-125-Side-1.jpg"),
      radius: 18,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://intrld.com/wp-content/uploads/2019/01/the-social-network-suite.jpg"),
      radius: 18,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://intrld.com/wp-content/uploads/2019/01/the-social-network-suite.jpg"),
      radius: 18,
    ),
  ];

  List<Widget> onboards = [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://imgd.aeplcdn.com/1200x900/n/cw/ec/44686/activa-6g-right-front-three-quarter.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/Reviews/BS6-TVS-Jupiter-5.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://imgd.aeplcdn.com/1280x720/n/cw/ec/98229/right-front-three-quarter1.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          children: [
            SizedBox(
              height: 240,
              child: Stack(children: [
                CarouselSlider(
                  items: [
                    onboards[0],
                    onboards[1],
                    onboards[2],
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xBFFFFFFF),
                        borderRadius: BorderRadius.circular(23)),
                    margin: EdgeInsets.only(bottom: 30),
                    width: 80.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: onboards.map((section) {
                        return Container(
                          width: 8,
                          height: 8,
                          margin:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == onboards.indexOf(section)
                                  ? Color(0xFF4B48C9)
                                  : Color(0xFFC4C4C4)),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF323232),
                    ),
                  ),
                ),
              ]),
            ),
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Honda Activa 4g 120cc',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontSize: 20,
                                    fontFamily: 'Jost',
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.share,
                                    size: 20,
                                    color: Color(0xFF323232),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Color(0xFF323232),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 18,
                                color: Color(0xFF4B48C9),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      '4.3',
                                      style: TextStyle(
                                          color: const Color(0xFF4B48C9),
                                          fontSize: 16,
                                          fontFamily: 'Jost',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      '(44 rides)',
                                      style: TextStyle(
                                          color: const Color(0xFF6E6E6E),
                                          fontSize: 16,
                                          fontFamily: 'Jost',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.water_drop,
                                      size: 18,
                                      color: const Color(0xFF6E6E6E),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Text(
                                        'Petrol',
                                        style: TextStyle(
                                            color: const Color(0xFF6E6E6E),
                                            fontSize: 16,
                                            fontFamily: 'Jost',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  color: const Color(0xFF6E6E6E),
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  width: 1,
                                  height: 20,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.bike_scooter,
                                      size: 18,
                                      color: Color(0xFF6E6E6E),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(4),
                                      child: Text(
                                        'Non-Geared',
                                        style: TextStyle(
                                            color: Color(0xFF6E6E6E),
                                            fontSize: 16,
                                            fontFamily: 'Jost',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  color: const Color(0xFF6E6E6E),
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  width: 1,
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.group,
                                      size: 18,
                                      color: const Color(0xFF6E6E6E),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Text(
                                        '2 Seater',
                                        style: TextStyle(
                                            color: const Color(0xFF6E6E6E),
                                            fontSize: 16,
                                            fontFamily: 'Jost',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: const Color(0xFF6E6E6E),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 0.5,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DATE & TIME',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 12,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12:30 PM',
                                    style: TextStyle(
                                        color: Color(0xFF323232),
                                        fontSize: 20,
                                        fontFamily: 'Jost',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Tue, 2 Feb',
                                      style: TextStyle(
                                          color: Color(0xFF323232),
                                          fontSize: 20,
                                          fontFamily: 'Jost',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                  child: Icon(
                                Icons.arrow_right_alt_rounded,
                                color: Color(0xFF6E6E6E),
                                size: 60,
                              )),
                              Column(
                                children: [
                                  Text(
                                    '6:30 PM',
                                    style: TextStyle(
                                        color: Color(0xFF323232),
                                        fontSize: 20,
                                        fontFamily: 'Jost',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Tue, 2 Feb',
                                      style: TextStyle(
                                          color: Color(0xFF323232),
                                          fontSize: 20,
                                          fontFamily: 'Jost',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: const Color(0xFF6E6E6E),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 0.5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INSURANCE & PROTECTION',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 12,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Covered by LifeBuddy corp',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontSize: 20,
                                    fontFamily: 'Jost',
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.info_outline,
                                size: 20,
                                color: Color(0xFF4B48C9),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: const Color(0xFF6E6E6E),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 0.5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CANCELLATION',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 12,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Cancellation after ride is accepted will incur a fine.',
                                  style: TextStyle(
                                      color: Color(0xFF323232),
                                      fontSize: 20,
                                      fontFamily: 'Jost',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.info_outline,
                                size: 20,
                                color: Color(0xFF4B48C9),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: const Color(0xFF6E6E6E),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 0.5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                          child: Text(
                            'VEHICLE REVIEWS',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 12,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                  elevation: elevationValue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            reviewIcon[0],
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Manish',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF6E6E6E),
                                                        fontSize: 12,
                                                        fontFamily: 'Jost',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 10,
                                              left: 4,
                                              right: 4),
                                          width: 300,
                                          child: Flexible(
                                            child: Text(
                                              'Best host ever. Everything was on time and convenient. 5 stars!',
                                              style: TextStyle(
                                                  color: Color(0xFF323232),
                                                  fontSize: 14,
                                                  fontFamily: 'Jost',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Card(
                                  elevation: elevationValue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            reviewIcon[0],
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Manish',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF6E6E6E),
                                                        fontSize: 12,
                                                        fontFamily: 'Jost',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 10,
                                              left: 4,
                                              right: 4),
                                          width: 300,
                                          child: Flexible(
                                            child: Text(
                                              'Best host ever. Everything was on time and convenient. 5 stars!',
                                              style: TextStyle(
                                                  color: Color(0xFF323232),
                                                  fontSize: 14,
                                                  fontFamily: 'Jost',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Card(
                                  elevation: elevationValue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            reviewIcon[0],
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        size: 18,
                                                        color:
                                                            Color(0xFF4B48C9),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Manish',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF6E6E6E),
                                                        fontSize: 12,
                                                        fontFamily: 'Jost',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 10,
                                              left: 4,
                                              right: 4),
                                          width: 300,
                                          child: Flexible(
                                            child: Text(
                                              'Best host ever. Everything was on time and convenient. 5 stars!',
                                              style: TextStyle(
                                                  color: Color(0xFF323232),
                                                  fontSize: 14,
                                                  fontFamily: 'Jost',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      color: const Color(0xFF6E6E6E),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 0.5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'YOUR HOST',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 12,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: (){
                              showRide(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(children: [
                                      Container(
                                        width: 50,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFF4B48C9),
                                              width: 2.0,
                                            )),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://cdn.mos.cms.futurecdn.net/ayc7mC5B9ooSo3rUVM7MLX.jpg"),
                                          radius: 20,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Card(
                                          elevation: 4.0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, right: 4),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color: Color(0xFF4B48C9),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        '4.3',
                                                        style: TextStyle(
                                                            color: const Color(
                                                                0xFF323232),
                                                            fontSize: 12,
                                                            fontFamily: 'Jost',
                                                            fontWeight:
                                                                FontWeight.w400),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ]),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                'Rohit Sharma',
                                                style: TextStyle(
                                                    color: Color(0xFF323232),
                                                    fontSize: 20,
                                                    fontFamily: 'Jost',
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(4),
                                                child: Text(
                                                  '(44 rides)',
                                                  style: TextStyle(
                                                      color: Color(0xFF6E6E6E),
                                                      fontSize: 16,
                                                      fontFamily: 'Jost',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              )
                                            ],
                                          ),
                                          Text(
                                            'Typically responds within 3 minutes.',
                                            style: TextStyle(
                                                color: Color(0xFF6E6E6E),
                                                fontSize: 12,
                                                fontFamily: 'Jost',
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Color(0xFF4B48C9),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void showRide(BuildContext context) {
    showModalBottomSheet(
      context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
      builder: (BuildContext context){
        return RequestBottomSheet();
      }
    );
  }
}
