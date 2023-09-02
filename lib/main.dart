import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sel=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('8ball Game'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            Container(child: Text('Make a wish and click on the Ball',style: TextStyle(fontWeight: FontWeight.bold),),),
            Expanded(
              child: Center(
                child: TextButton(
                  child: Container(
                    child: Image.asset('images/ball$sel.png'),
                  ),
                  onPressed: (){
                    sel=Random().nextInt(5)+1;
                    setState(() {});
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
