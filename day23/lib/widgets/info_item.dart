import 'package:day22/widgets/company_model.dart';
import 'package:flutter/material.dart';
class InfoItem extends StatelessWidget {
  ComapnyModel ?info;
   InfoItem({super.key, this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.circular(20)
     ),
      height: 110,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Row(
               
                children: [
                   Container(
                    
                    height: 40,
                    width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Image.asset("${info!.imageUrl}"),
             
                ),
                Text("${info!.comapanyName}"),
                ],
               ),
             ),
             SizedBox(width: 100,),
              Icon(Icons.bookmark_outline_outlined),
            ],
            
          ),
         
    Text('${info!.title}', style: TextStyle(
      fontSize: 22,
    ),),
    Row(
      children: [
        Icon(Icons.location_on_outlined),
        Text('${info!.address}', style: TextStyle(
          fontSize: 14
        ),),
      ],
    )
        ],
      ),
    );
  }
  
  
}