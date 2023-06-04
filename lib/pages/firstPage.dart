// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:uts/components/horizitem.dart';
import 'package:uts/components/liveBiding.dart';
import 'package:uts/pages/secondPage.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "NFT Market",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22),
                            ),
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.grey[300]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.search,
                                        size: 25,
                                        color: Colors.black87,
                                      ),
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.grey[300]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        size: 25,
                                        color: Colors.black87,
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            horizItem(title: "Music", icon: Icons.audiotrack),
                            SizedBox(
                              width: 15,
                            ),
                            horizItem(
                                title: "Sport", icon: Icons.sports_basketball),
                            SizedBox(
                              width: 15,
                            ),
                            horizItem(
                                title: "Food", icon: Icons.fastfood_sharp),
                            SizedBox(
                              width: 15,
                            ),
                            horizItem(title: "Music", icon: Icons.audiotrack),
                            SizedBox(
                              width: 15,
                            ),
                            horizItem(
                                title: "Food", icon: Icons.fastfood_sharp),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    color: Colors.black26,
                                    offset: Offset(0, 2))
                              ],
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [
                                    0.8,
                                    1
                                  ],
                                  colors: [
                                    Color.fromARGB(255, 7, 161, 182),
                                    Color.fromARGB(255, 228, 116, 41)
                                  ])),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Collect and Sell",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Extraordinary NFTs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white),
                                            child: SizedBox(
                                              height: 15,
                                              width: 15,
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Colors.black),
                                              child: SizedBox(
                                                height: 9,
                                                width: 9,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "Extraordinary NFTs",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Live Biding",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              liveBiding(
                                  genre: "Beautiful",
                                  title: "The Diamond",
                                  time: "3h 12m 36s left",
                                  harga: "0.47 ETH",
                                  gambar: "images/image.jpg"),
                              SizedBox(
                                width: 15,
                              ),
                              liveBiding(
                                  genre: "Smart",
                                  title: "The Galaxy",
                                  time: "1h 15m 2s left",
                                  harga: "0.80 ETH",
                                  gambar: "images/image2.jpg"),
                              SizedBox(
                                width: 15,
                              ),
                              liveBiding(
                                  genre: "Genius",
                                  title: "The Diamond",
                                  time: "3h 12m 36s left",
                                  harga: "0.47 ETH",
                                  gambar: "images/image.jpg"),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 75,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home,
                            size: 28,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => secondPage()));
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.search,
                              size: 28,
                              color: Colors.grey,
                            ),
                            Text(
                              "Search",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.stacked_bar_chart,
                            size: 28,
                            color: Colors.grey,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 28,
                            color: Colors.grey,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
