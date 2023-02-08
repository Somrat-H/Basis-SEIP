import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
             child: Container(
               decoration: const BoxDecoration(
                 color: Color.fromARGB(255, 231, 79, 79),
               ),
               child: const Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Center(
                  child: CircleAvatar(
                   radius: 100,
                    backgroundImage: NetworkImage('https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/279581065_1496446704103742_1057215260167650357_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeGzYYc7OefOOq7D2V5xz3gpgrHcJ7c8KEqCsdwntzwoSlr2BEN1Sp5cmov2PWMpzD3OdYzuYlw6YrkrwkTTRLG-&_nc_ohc=OOQum4gIN4EAX-7cQy2&_nc_ht=scontent.fdac27-2.fna&oh=00_AfA9Um6WG_dCu1kKPpRHDJYUPwuQvDm9BMbLvlqXELHL5Q&oe=63E8ACCD',
                      
                    ),
                  ),
                 ),
               ),
             ),
            )),
           Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Md.Somrat Hossain', 
                   style: TextStyle(
                    fontSize: 25,
                   ),
                  ),
                  const SizedBox(height: 20,),
                 
                  const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.facebook_outlined),
                    SizedBox(width: 20,),
                    Icon(Icons.call),
                    SizedBox(width: 20,),
                    Icon(Icons.mail_outline),
                  ],
                )
                ],
              ),
            ))
        ],
      ),
    );
  }
}