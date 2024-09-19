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

  Widget appBody1 (){
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

  Widget appBody2() {
    return Center(
      child: Container(
        width: 800,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.blueAccent, width: 5),
          borderRadius: const BorderRadius.all(Radius.circular(20)), // Add this line for border radius
        ),
        child: Row(
          children: [
            Container(height: 80,width: 40,color: Colors.amber,),
            Container(height: 80,width: 40,color: Colors.blue,)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: appBody2()
    );
  }
}
