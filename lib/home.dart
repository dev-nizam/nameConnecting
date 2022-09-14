import 'package:flutter/material.dart';
import 'package:shopnameconect/mainpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shopping cart"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: shopname.length,
            itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MainPage(shopName:shopname[index] ,)));
            },
            child: ListTile(
              title: Text(shopname[index]),
              subtitle: Text(loction[index]),

            ),
          );
        }),
      ),
    );
  }
  final List shopname =[
    "yara",
    "Ad",
    "bismi",
    "lulu",
  ];
  final List loction =[
    "chemmad",
        "perindhalmanna",
        "kottakkel",
        "mallapuram",
  ];
}
