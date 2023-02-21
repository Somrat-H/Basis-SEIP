import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,right: 10,
      ),
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Welcome to Home\nSomrat Hossain', style: TextStyle(
            fontSize: 25,
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 14,
                ),
                child: Stack(
                  children: [
                     Container(
                      
                      padding: EdgeInsets.only(top: 10),
                      transform: Matrix4.rotationZ(100),
                      child: Icon(Icons.notifications_outlined, size: 45,)),
                    Positioned(
                       top: 2,
                       left: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                                      ))
                  ],
                ),
              ), 
              SizedBox(width: 25,),
              ClipOval(
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCMbk_i0pQhjeNS9n5-RdILGEMrMQMV-JsvA&usqp=CAU',
                fit: BoxFit.fill,
                height: 50,
                width: 50,
                
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}