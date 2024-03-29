import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading : Icon(Icons.arrow_back, color: SffColor.sffMainColor),
        backgroundColor: SffColor.sffMainColor,
        title: Center(child: Text("addon.messages.message".tr, style: TextStyle(color: Colors.white),)),
        actions: [

          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Settings()));
              },
              icon: Icon(Icons.search),
              color: Colors.white),

          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Settings()));
              },
              icon: Icon(Icons.settings),
              color: Colors.white),

          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Settings()));
              },
              icon: Icon(Icons.more_vert),
              color: Colors.white),
        ],
      ),

      body: Container(
        child: Center(
          // child: Text(
          //   "Dashboard",
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 45,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
        ),
      ),
    );
  }
}
