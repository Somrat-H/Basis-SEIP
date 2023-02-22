import 'package:flutter/material.dart';
class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/search_bg.png'))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text('Fast Search',style: TextStyle(
                fontSize: 23, color: Colors.white, 
                fontWeight: FontWeight.w600
              ),),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text('You can search quickly for\nthe you want',style: TextStyle(
                fontSize: 20, color: Colors.white
              ),),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 25,
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,

                ),
                child: Row(
                  children: [
                    Image.asset('images/search.png', 
                    height: 25,
                    width:30,
                    ),
                    const SizedBox(width: 5,),
                    const Text('Search', )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}