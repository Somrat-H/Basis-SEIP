import 'package:flutter/material.dart';
class CustomTab extends StatefulWidget {
  const CustomTab({super.key});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  List myList = <String> ['All', '⚡ Popular', '⭐ Featured'];
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          left: 50,
          right: 20,

        ),
        child: ListView.separated(
         shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: myList.length,
          separatorBuilder: (context, index)=> SizedBox(width: 25,),
          itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              setState(() {
                tab = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: tab == index ? Colors.yellow.shade400 : Colors.white,
                border: Border.all(
                  color: tab == index ? Colors.red : Colors.yellow,
                )
              
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(myList[index]),
              ),
              
            ),
          );
        }),
      ),
    );
  }
}