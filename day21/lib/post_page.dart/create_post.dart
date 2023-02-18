import 'package:flutter/material.dart';
class CreatePost extends StatelessWidget {
  int ?time;
  String ?title;
  String ? image;
  CreatePost({super.key, this.time, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
    
        children: [
         ClipRRect(
           borderRadius: BorderRadius.circular(20.0),
           child: Image.network(
          image!,
          height: 150,
          width: 200,
          fit: BoxFit.fill,
           ),
         ),   // child: Image.network('https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80', fit: BoxFit.fill,),
          SizedBox(
            height: 4,
          ),
          Text('$time min read', 
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.black54, 
            
            fontSize: 15,
          ),),
          Text(title!, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),),
          
    
        ],
        
      ),
    );
  }
}