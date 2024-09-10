import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  PreferredSizeWidget appBar(){
    return AppBar(
      title: const Text("My App",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900
        ),
      ),
      backgroundColor: Colors.blueAccent[400],
    );
  }

  Widget homeContentBox(){
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: const Center(child: Text("😫",
        style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),
      )),
    );
  }

  Widget appBody (){
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent[50]
        ),
        child: Center(
          child: homeContentBox()
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: appBody()
    );
  }
}
