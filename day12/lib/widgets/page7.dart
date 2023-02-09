
import 'package:day12/widgets/page5.dart';
import 'package:flutter/material.dart';
class Page7 extends StatelessWidget {
  const Page7({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
       backgroundColor: Colors.blue[200],
        title: const Text('Page7'),
      ),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Page5()));
            }, child: const Text('Go back'),),  

        ]),
      ),
    );
  }
}