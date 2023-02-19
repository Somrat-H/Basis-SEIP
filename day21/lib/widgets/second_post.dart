import 'package:flutter/material.dart';
// ignore: must_be_immutable
class SecondPost extends StatelessWidget {
   String ?image;
  String ?placeName;
  String ?travelName;
   SecondPost({super.key, this.image, this.placeName, this.travelName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        children: [
          Image.network(image!, fit: BoxFit.fill, height: 200, width: 200,),
          Positioned(
            top: 160,
            left: 10,
            child: Text(placeName!, style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),)),
         Positioned(
          top: 135,
          left: 10,
          child:  Text(
            travelName!, style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ))
        ],
      )
    );
  }
}