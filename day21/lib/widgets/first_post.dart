import 'package:flutter/material.dart';

class FirstPost extends StatelessWidget {
  String ?image;
  String ?placeName;
  String ?travelName;
  FirstPost({super.key, this.image, this.placeName, this.travelName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        children: [
          Image.network(image!, fit: BoxFit.fill, height: double.infinity, width: double.infinity,),
          Positioned(
            top: 250,
            left: 10,
            child: Text(placeName!, style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),)),
         Positioned(
          top: 220,
          left: 10,
          child:  Text(
            travelName!, style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ))
        ],
      )
    );
  }
}