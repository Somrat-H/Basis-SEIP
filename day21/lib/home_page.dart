import 'package:day21/screen/popular_page.dart';
import 'package:day21/screen/recent_page.dart';
import 'package:day21/screen/tranding_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController ? _pageController;
  int currentIndex = 0;

  @override
  void initState() {

    _pageController = PageController(
      initialPage: currentIndex,
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black,),
      title: const Text('Education', style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black
      ),),
      actions: const[
        Icon(Icons.search_sharp,color: Colors.black,),
      ],
     ),

    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(40)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                        onTap: (){
                          setState(() {
                            currentIndex = 0;
                            _pageController!.jumpToPage(0);
                          });
                        },
                        child: Container(
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                             color: currentIndex == 0? Colors.white : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(40)),
                            child: const Center(child: Text('Tranding', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),)),
                        ),
                      ),
                      
                  InkWell(
                        onTap: (){
                          setState(() {
                            currentIndex = 1;
                            _pageController!.jumpToPage(1);
                          });
                        },
                        child: Container(
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                             color: currentIndex == 1 ? Colors.white : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(40)),
                            child: const Center(child: Text('Recent', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),)),
                        ),
                      ),
                   InkWell(
                        onTap: (){
                          setState(() {
                            currentIndex = 2;
                            _pageController!.jumpToPage(2);
                          });
                        },
                        child: Container(
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                             color: currentIndex == 2? Colors.white : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(40)),
                            child: const Center(child: Text('Tranding', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),)),
                        ),
                      ),
                ],
              ),
            ),
          ),
        ), 
        Expanded(child: PageView(
          controller: _pageController,
          children: [
            const TrandingPage(),
            const RecentPage(),
            const PopularScreen(),
          ],
        ))
      ],
    ),
    );
  }
}