import 'package:day22/widgets/company_model.dart';
import 'package:day22/widgets/custom_bottom_sheet.dart';
import 'package:day22/widgets/info_item.dart';
import 'package:flutter/material.dart';
class CustomBottom extends StatelessWidget {
  final info = ComapnyModel.comapanyInfo();
  CustomBottom({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              context: context, builder: (BuildContext context){
              return CustomBottomSheet(info: info[index], comapnyModel: info[index],);
            });
          },
          child: InfoItem(info: info[index])), 
      separatorBuilder: (_, index) => const SizedBox(width: 20,), 
      itemCount: info.length),
    );
  }
}