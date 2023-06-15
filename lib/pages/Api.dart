// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class buildernya extends StatelessWidget {
  buildernya({super.key});

  List<dynamic> user = [];

  Future getItems() async {
    var response = await http.get(Uri.https('randomuser.me','/api/',{'results':'15'}));
    
    var jsonData = jsonDecode(response.body);

    user = jsonData['results'];
    print(user.length);
    return jsonData;
  }

  int plusOne(int x){
    int hasil = x +1;
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getItems(), 
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done){
            return SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 35.0, vertical: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Meet with other people : ", style: GoogleFonts.ptSans(
                                color: Colors.black, 
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                            ],
                          ),
                          SizedBox(height: 30,),
                          
                          for(int i = 0; i < user.length; i++)
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 1,
                                      spreadRadius: 1
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15), color: Color.fromARGB(108, 136, 136, 136)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        
                                        SizedBox(width: 15,),
                                        Text(user[i]['name']['first'], style: GoogleFonts.ptSans(color: Colors.white, fontWeight: FontWeight.bold),),
                                        Text(user[i]['email'], style: GoogleFonts.ptSans(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 8),),
                                      ],
                                    ),
                                    
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("From ", style: GoogleFonts.ptSans(color: Color.fromARGB(255, 43, 46, 255), fontSize: 10),),
                                        Text(user[i]['location']['country'].toString(), style: GoogleFonts.ptSans(color: Color.fromARGB(255, 99, 101, 255), fontSize: 10, fontWeight: FontWeight.bold),),
                                      ],
                                    )
                                  ]),
                                ),
                              ),
                              SizedBox(height: 15,),
                            ],
                          ),
                          SizedBox(height: 75,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }),),
    );
  }
}