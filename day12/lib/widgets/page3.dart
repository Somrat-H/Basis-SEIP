import 'package:day12/widgets/page4.dart';
import 'package:flutter/material.dart';
class Page3 extends StatelessWidget {
   List<String> ? animalName = [];
  Page3({super.key, this.animalName});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text('Page3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(animalName![2]),
            SizedBox(height: 10,),
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Page4()));
            }, child: const Text('Go page 4'),),
            const SizedBox(height: 10,),
          MaterialButton(
            color: Colors.blue[100],
            onPressed: (){}, child: const Text('Go back'),),  

        ]),
      ),
    );
  }
}