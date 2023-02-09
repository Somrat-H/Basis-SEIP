import 'package:day12/widgets/page7.dart';
import 'package:flutter/material.dart';
class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text('Page6'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Page7()));
            }, child: const Text('Go page 7'),),
            const SizedBox(height: 10,),
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){}, child: const Text('Go back'),),  

        ]),
      ),
    );
  }
}