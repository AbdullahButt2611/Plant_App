// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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

                  SizedBox(height: 70,),

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

            ],
          ),

        ],
      ),

    );
  }
}