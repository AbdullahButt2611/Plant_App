// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plant_app/productlist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final textstyle = TextStyle(fontSize: 18.0, color: Colors.white,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        children: [

          Container(

            width: 90,
            color: Color(0xff67864a),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Icon(Icons.scatter_plot, size: 40, color: Colors.white,),

                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Green Plants",
                    style: textstyle,
                    ),
                ),

                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Indoor Plants",
                    style: textstyle,
                    ),
                ),

                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Outdoor Plants",
                    style: textstyle,
                    ),
                ),

              ],
            ),

          ),
          
          Column(
            children: [

              Row(
                children: [

                  SizedBox(height: 150,),  //70 By Default

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 130,
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.search_outlined, size: 40,)
                    ),
                  ),

                ],
              ),

              Container(
                padding: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width - 130,
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Green",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),

                    Text(
                      "Plants",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),

              ProductList(),

            ],
          ),

        ],
      ),

    );
  }
}