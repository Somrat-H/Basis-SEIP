import 'package:day12/widgets/page1.dart';
import 'package:day12/widgets/page5.dart';
import 'package:flutter/material.dart';
class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text('Page4'),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Page5()));
            }, child: const Text('Go page 5'),),
            const SizedBox(height: 10,),
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Page1()));

            }, child: const Text('Go back'),),  

        ]),
      ),
    );
  }
}