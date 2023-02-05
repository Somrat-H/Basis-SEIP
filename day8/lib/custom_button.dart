import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
           boxShadow:const [
             BoxShadow(
              offset: Offset(.70,.60),
              blurRadius: .25,
              color: Colors.black54
            )
          ]
         
          
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  
                )
              ),
              child: const Icon(Icons.wifi_outlined, color: Colors.white,),
            ),
            
            Container(
              height: 50,
              width: 50,
               decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)
                ),
               
               ),
              child: const Center(child: Text('WIFI')),
              
            )
          ],
        ),
      ),
    );
  }
}