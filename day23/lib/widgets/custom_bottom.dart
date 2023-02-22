import 'package:day22/widgets/company_model.dart';
import 'package:day22/widgets/info_item.dart';
import 'package:flutter/material.dart';
class CustomBottom extends StatelessWidget {
  final info = ComapnyModel.comapanyInfo();
  CustomBottom({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InfoItem(info: info[index]), 
      separatorBuilder: (_, index) => SizedBox(width: 20,), 
      itemCount: info.length),
    );
  }
}