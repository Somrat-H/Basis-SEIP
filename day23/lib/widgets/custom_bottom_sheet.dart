import 'package:day22/widgets/company_model.dart';
import 'package:flutter/material.dart';
class CustomBottomSheet extends StatefulWidget {
  ComapnyModel comapnyModel;
  
  CustomBottomSheet({required this.comapnyModel, required ComapnyModel info});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(5),
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 5),
                height: 5,
                width: 100,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(widget.comapnyModel.imageUrl.toString(), height: 50, width: 50,),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.comapnyModel.comapanyName.toString(), style: TextStyle(
                      fontSize: 20
                    ),),
                  ],
                  
                ),
                   Row(children: [
                    Icon(Icons.bookmark_outline_outlined),
                    Icon(Icons.more_horiz_outlined),
    
                ],)
              ],
            ),
            Text(widget.comapnyModel.title.toString(), style: TextStyle(
              fontSize: 25,
            ),),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(widget.comapnyModel.address.toString()),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.timelapse_outlined),
                    Text(widget.comapnyModel.fullTime.toString()),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Requirements', style: TextStyle(
                fontSize: 22
              ),),
            ),
            ...widget.comapnyModel.requirements.map((e) => Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(e,style: TextStyle(
                        fontSize: 15
                      ),),
                    )
                  ],
                ),
              ),
            )),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade500,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text('Apply Now', style: TextStyle(
                    fontSize: 22,
                    color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}