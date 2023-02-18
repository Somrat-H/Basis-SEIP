import 'package:flutter/material.dart';

import 'bottom_sheet.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  myBottomSheetDemo(){
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context, builder: (context){
      return const BottomSheetDemo();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        elevation: 0,
        centerTitle: true,
        title: const Text('G R I D View', style: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),),
      ),
      floatingActionButton: IconButton(onPressed: (){
        myBottomSheetDemo();
      }, icon: const Icon(
        Icons.photo,
      )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10), itemBuilder: (context, i){
      
          return SizedBox(
            height: 300,
            width: 200,
            child: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg')
          );
        }),
      ),
    );
  }
}