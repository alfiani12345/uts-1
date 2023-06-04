// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class liveBiding extends StatelessWidget {
  final String genre;
  final String title;
  final String time;
  final String harga;
  final String gambar;

  const liveBiding({super.key, required this.genre, required this.title, required this.time, required this.harga, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 275,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Colors.black12)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(gambar),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: SizedBox(
                            height: 150,
                            width: 250,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              genre,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromARGB(193, 158, 158, 158),
                              ),
                              child: SizedBox(
                                height: 5,
                                width: 5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "images/eth.png",
                                  color: Color.fromARGB(255, 14, 209, 21),
                                  width: 15,
                                ),
                                Text(
                                  harga,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 14, 209, 21),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                                child: Text(
                                    time,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal : 18.0, vertical: 4),
                                child: Text(
                                    "Place a bid",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        fontSize: 15),
                                  ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
  }
}