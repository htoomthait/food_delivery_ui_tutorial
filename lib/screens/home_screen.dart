import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.account_circle), iconSize: 30.0,),
          title: const Text("Food Delivery", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            TextButton(onPressed: () {}, child: Text("Carts(0)", style:  TextStyle(color:Colors.white, fontSize: 20.0),),

            ),
          ]
      ),

    );
  }
}
