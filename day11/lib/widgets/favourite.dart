import 'package:flutter/material.dart';
class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 100,
            color: Colors.blue.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHqAGxMN9yfEefll0sp2ZFozFZPSmsH8D42A&usqp=CAU', fit: BoxFit.cover,),
                const Icon(Icons.favorite,
                color: Colors.red,
                )
              ],
            ),

          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 100,
            color: Colors.blue.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmpDt6RwAlFZXz8v5KX3-dBoMwHv-oGcPBEw&usqp=CAU', fit: BoxFit.cover,),
                const Icon(Icons.favorite,
                color: Colors.red,
                )
              ],
            ),

          ),
        )
      ],),
    );
  }
}