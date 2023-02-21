import 'package:day22/widgets/custom_appbar.dart';
import 'package:day22/widgets/custom_body.dart';
import 'package:day22/widgets/custom_bottom.dart';
import 'package:day22/widgets/custon_tab.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                  color: Colors.white,
                )),
                 Expanded(
                  flex: 2,
                  child: Container(
                  color: Colors.grey.shade100,
                )),
      
              ],
            ),
            Positioned(
              child: Column(
                children:  [
                  CustomAppBar(),
                  CustomBody(),
                  CustomTab(),
                  SizedBox(height: 15,),
                  CustomBottom(),
                ],
              )
      
            ),
          ],
        ),
      ),
    );
  }
}