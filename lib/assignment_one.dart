import 'package:flutter/material.dart';

class AssignmentOne extends StatelessWidget {
  const AssignmentOne({super.key});

  Widget appImageContainer(){
    return Expanded(
        child: Container(
          height: 450,
          child: Image.asset('lib/images/strawberrypie.png',
          fit: BoxFit.cover,
          ),
        )
      );
  }

  Widget appAsideContent(){
    return Column(
      children: [
        Container(
          width: 250,
          margin: const EdgeInsets.only(left: 4,right: 4,top: 2,bottom: 8),
          child: const Center(child: Text("Strawberry Pavlova",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey,width: 3)
          ),
        ),
        Container(
          width: 250,
          margin: const EdgeInsets.only(left: 4,right: 4,bottom: 8),
          child: const Text(
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, corporis odit illo est nobis ipsum unde eum mollitia quo iste!\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa, ipsa!",
    textAlign: TextAlign.center, 
          ),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey,width: 3)
          ),
        ),
        Container(
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey,width: 3)
          ),
          margin: EdgeInsets.only(left: 4,right: 4,bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("★★★★★"),
              Text("reviews")
            ],
          )
        ),
        Container(
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey,width: 3)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Haha"),
                  Text("Haha")
                ],
              ),
              Column(
                children: [
                  Text("Haha"),
                  Text("Haha")
                ],
              ),
              Column(
                children: [
                  Text("Haha"),
                  Text("Haha")
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget appAside(){
    return Container(
      margin: EdgeInsets.only(top: 20,bottom: 20,right:5,left:5),
      width: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent,width: 5)
      ),
      child: appAsideContent(),
    );
  }

  Widget appBody(context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.15,
        ),
        height: 450,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 5)
        ),
        child: Row(
          children: [
            appAside(),
            appImageContainer()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appBody(context),
    );
  }
}