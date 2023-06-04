// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class horizItem extends StatelessWidget {
  final String title;
  final icon;
  const horizItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical : 10.0, horizontal: 12),
                        child: Row(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                            SizedBox(width: 5,),
                            Icon(
                              icon,
                              size: 25,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    );
  }
}