import 'dart:io';
import 'dart:ui';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _itemList({ image}) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: 400,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.2),
                    ]
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('PDP Online',style: TextStyle(fontSize: 30,color: Colors.white),),
                ),
              ) ,

            ),

          ),
        ],

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: [
          _itemList(image: 'assets/images/ic_image2.jpg'),
          _itemList( image: 'assets/images/ic_image2.jpg'),
          _itemList( image: 'assets/images/ic_image2.jpg'),

        ],
      ),


    );
  }
}