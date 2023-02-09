import 'package:day12/widgets/page3.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Page2 extends StatelessWidget {
  List<String> ? animalName = [];
  Page2({super.key, this.animalName});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text('Page2'),
      ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(animalName![1]),
          const SizedBox(height: 10,),
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Page3(animalName: animalName,)));
            },
             child: const Text('Go page 3'),),
             const SizedBox(height: 10,),
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){}, child: const Text('Go back'),),  

        ]),
      ),
    );
  }
}