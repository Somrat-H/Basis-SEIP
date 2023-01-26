import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text('Day4', 
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle:  true,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_outlined,
         color:  Colors.black,
        ),
        actions: const[
          Icon(Icons.menu, color: Colors.black,),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(120),
        height: 250,
        width: 250,
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), 
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1, 1),
              blurRadius: 1.3,
              spreadRadius: 1.3,
            )
          ]  
        ),
        child: const Icon(
          Icons.adobe,
          size: 80,
        ),
        // child: Container(
        //   margin: const EdgeInsets.only(top: 90, bottom: 90, right: 250),
        //   height: 50,
        //   width: 250,
        //   padding: const EdgeInsets.only(top: 20, left: 5),
        //   decoration: const BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.only(
        //       topRight: Radius.circular(20),
        //       bottomRight: Radius.circular(20)
        //     )
        //   ),
        //   child: const Text('Container Widget Day 4', 
        //     style: TextStyle(
        //       fontSize: 20,
        //       fontWeight: FontWeight.bold
        //     ),
        //   ),
        // ),
      ),
    );
  }
}