import 'package:day21/model/travel_model.dart';
import 'package:day21/widgets/first_post.dart';
import 'package:day21/widgets/second_post.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController ?_pageController;
  int currentIndex = 0;
  
  @override
  void initState() {
    _pageController = PageController(
      initialPage: currentIndex,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const[
          Padding(
            padding:  EdgeInsets.only(right: 10),
            child: Icon(Icons.menu, color: Colors.black,),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.centerRight,
        child: FloatingActionButton(
      
      
          backgroundColor: Colors.orange,
          onPressed: (){
           
          },
         child: const Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
        ),
      ),
 
       body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          bottom: 10,
          right: 10,

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Travel Blog', style: TextStyle(
              fontSize: 25,
            ),),
            const SizedBox(height: 10,),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: myList.length,
                itemBuilder: (context, i){
                return FirstPost(
                  image: myList[i].image,
                  placeName: myList[i].placeName,
                  travelName: myList[i].travelName,
                );
              })),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Most Popular', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),),
            Text('View all', style: TextStyle(
              fontSize: 18,
              color: Colors.orange.shade500
            ),),
      
              ],
            ),
            const SizedBox(height: 10,),
              Expanded(
              flex: 2,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 20,),
                itemCount: myList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i){
                return SecondPost(
                  image: myList[i].image,
                  placeName: myList[i].placeName,
                  travelName: myList[i].travelName,
                );
              })
             ),
               
          ],
        ),
      ),
    );
  }
}