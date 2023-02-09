import 'package:day12/widgets/page4.dart';
import 'package:day12/widgets/page6.dart';
import 'package:flutter/material.dart';
class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text('Page5'),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Page6()));
            }, child: const Text('Go page 6'),),
            const SizedBox(height: 10,),
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Page4()));
            }, child: const Text('Go back'),),  

        ]),
      ),
    );
  }
}