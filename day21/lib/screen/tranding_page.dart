import 'package:day21/post_page.dart/create_post.dart';
import 'package:day21/post_page.dart/create_post2.dart';
import 'package:flutter/material.dart';

class TrandingPage extends StatelessWidget {
  const TrandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 5,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CreatePost(
                      time: 4,
                      title: 'Area of Dhaka,the \nCapital of Bangladesh',
                      image: 'https://media.gettyimages.com/id/542716807/photo/dhaka-skyline.jpg?s=612x612&w=gi&k=20&c=znFoCToli0EEHYgp9XmuTHgddIY1WDTGi4e7IMAwTmw=',

                    ),
                    SizedBox(
                      width: 10,
                    ),
                     CreatePost(
                      time: 4,
                      title: 'Area of Hatirjhil,\n Dhaka, Bangladesh',
                      image: 'https://media.istockphoto.com/id/1210768445/photo/skyscraper-in-dhaka-metropolitan-area.jpg?s=612x612&w=0&k=20&c=qGFV2qpVXkUNtm8KYT2avrSZwcBcoeM9wIp4LdADgrI=',

                    ),
                      SizedBox(
                      width: 10,
                    ),
                     CreatePost(
                      time: 4,
                      title: 'Sick Cities a scenario,\n Dhaka, Bangladesh',
                      image: 'https://i.unu.edu/media/iigh.unu.edu/publication/840/Sick-Cities-A-Scenario-for-Dhaka-City.jpg',

                    ),
                      SizedBox(
                      width: 10,
                    ),
                     CreatePost(
                      time: 4,
                      title: 'Dhaka  traffic wastes 5 milion,\nwork hours',
                      image: 'https://prod-media-eng.dhakatribune.com/uploads/2018/05/mehedi-hasan-5-1526757747330.jpg',

                    ),
                    
                   
                 
                  ],
                ),
              ),
            ),
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


                          
          ],
        ),
      ),
    );
  }
}
