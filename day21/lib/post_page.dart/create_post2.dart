import 'package:flutter/material.dart';
class CreatePost2 extends StatelessWidget {
  String ?image;
  String ?title;
  CreatePost2({super.key, this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
                   ClipRRect(
             borderRadius: BorderRadius.circular(20.0),
             child: Image.network(
            image!,
            height: 100.0,
            width: 100.0,
            fit: BoxFit.fill,
             ),
           ),   // child: Image.network('https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80', fit: BoxFit.fill,),
            SizedBox(
              width: 20,
            ),
          
            Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('r/worldnews', style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),),
                SizedBox(
                  height: 2,
                ),
                Text(title!, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
            
      
        ],
      ),
    );
  }
}