import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.telegram,
                      size: 200,
                    ),
                    Text(
                      "Telegram",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(radius: 10,backgroundColor: Colors.black,),
                        SizedBox(width: 10,),
                        CircleAvatar(radius: 10,backgroundColor: Colors.grey,),
                        SizedBox(width: 10,),
                        CircleAvatar(radius: 10,backgroundColor: Colors.grey,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.android,
                      size: 200,
                    ),
                    Text("Android",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.laptop_windows_sharp,
                      size: 200,
                    ),
                    Text("Laptop",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
