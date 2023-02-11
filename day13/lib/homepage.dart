import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
   HomePage({super.key, this.username, this.password});
  String ?username;
  String ?password;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Username : ${widget.username}', style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
            Text('Password : ${widget.password}',style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
          ],
        ),
      ),
    );
  }
}