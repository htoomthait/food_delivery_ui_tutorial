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
      body: ListView(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 0.8)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 0.8, color: Theme.of(context).primaryColor)
                  ),
                  prefixIcon: Icon(Icons.search, size: 30.0),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {}
                  ),
                  hintText: "Search Food or Restaurant"),
            ),
          ),

        ],
      ),

    );
  }
}
