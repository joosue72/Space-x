import 'dart:async';
import 'package:flutter/material.dart';

import 'UI/Card_List.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => card_list())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        child: SizedBox(
          
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .8,
            child: Image.network(
          'https://1000marcas.net/wp-content/uploads/2020/11/SpaceX-Logo.png',
        
        )));
    //child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
