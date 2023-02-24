import 'package:day22/widgets/company_model.dart';
import 'package:day22/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class InfoItem extends StatefulWidget {
  ComapnyModel ?info;
   InfoItem({super.key, this.info});

  @override
  State<InfoItem> createState() => _InfoItemState();
}

class _InfoItemState extends State<InfoItem> {
  ComapnyModel ?tai;
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
                  child: Image.asset("${widget.info!.imageUrl}"),
                  
                ),
                Text("${widget.info!.comapanyName}"),
                ],
               ),
             ),
             const SizedBox(width: 100,),
              const Icon(Icons.bookmark_outline_outlined),
            ],
            
          ),
         
    Text('${widget.info!.title}', style: const TextStyle(
      fontSize: 22,
    ),),
    Row(
      children: [
        const Icon(Icons.location_on_outlined),
        Text('${widget.info!.address}', style: const TextStyle(
          fontSize: 14
        ),),
      ],
    )
        ],
      ),
    );
  }
}