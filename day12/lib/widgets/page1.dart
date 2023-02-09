import 'dart:io';

import 'package:day12/widgets/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
   Page1({super.key,});

  List<String> ? animalName = ['C A T', 'D O G', 'G O A T',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text('Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              animalName![0],
            ),
            const SizedBox(height: 10,),
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Page2(animalName: animalName,)));
            }, child: const Text('Go page 2'),),
            const SizedBox(height: 10,),
            MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
              exit(0);
            }, child: const Text('Close App'),),
        ]),
      ),
    );
  }
}