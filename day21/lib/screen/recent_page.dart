import 'package:flutter/material.dart';

import '../post_page.dart/create_post.dart';
import '../post_page.dart/create_post2.dart';
class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            SizedBox(height: 15,),
            CreatePost2(
              image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-55jcpJ72nhbFcDtOk2zcvLKGtVLAluGUIw&usqp=CAU',
              title: 'Trafic jam corst per year\nTK37,000 crore',
            ),
             SizedBox(height: 15,),
            CreatePost2(
              image: 'https://cdn.britannica.com/69/6269-050-7EE9410A/Boat-traffic-Buriganga-River-Bangladesh-Dhaka.jpg',
              title: 'Buriganga river \nDhaka, Bangladesh',
            ),
             SizedBox(height: 15,),
            CreatePost2(
              image: 'https://content.r9cdn.net/rimg/dimg/c9/06/8d4fe0d8-city-28030-164fcc85915.jpg?width=1366&height=768&xhint=1477&yhint=1081&crop=true',
              title: 'Lalbag Kella \nDhaka, Bangladesh',
            ),
             SizedBox(height: 15,),
            CreatePost2(
              image: 'https://content.r9cdn.net/rimg/dimg/c9/06/8d4fe0d8-city-28030-164fcc85915.jpg?width=1366&height=768&xhint=1477&yhint=1081&crop=true',
              title: 'Lalbag Kella \nDhaka, Bangladesh',
            ),
             SizedBox(height: 15,),
            CreatePost2(
              image: 'https://content.r9cdn.net/rimg/dimg/c9/06/8d4fe0d8-city-28030-164fcc85915.jpg?width=1366&height=768&xhint=1477&yhint=1081&crop=true',
              title: 'Lalbag Kella \nDhaka, Bangladesh',
            ),
             SizedBox(height: 15,),
            CreatePost2(
              image: 'https://content.r9cdn.net/rimg/dimg/c9/06/8d4fe0d8-city-28030-164fcc85915.jpg?width=1366&height=768&xhint=1477&yhint=1081&crop=true',
              title: 'Lalbag Kella \nDhaka, Bangladesh',
            ),
             SizedBox(height: 15,),
            CreatePost2(
              image: 'https://content.r9cdn.net/rimg/dimg/c9/06/8d4fe0d8-city-28030-164fcc85915.jpg?width=1366&height=768&xhint=1477&yhint=1081&crop=true',
              title: 'Lalbag Kella \nDhaka, Bangladesh',
            )


                          
          ],
        ),
      ),
    );
  }
}