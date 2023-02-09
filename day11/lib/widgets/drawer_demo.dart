import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  myDialog(){
    return showDialog(context: context, builder: (BuildContext context){
      return SizedBox(
        height: 300,
        width: 200,
        
        child: AlertDialog(
          title: const Text('Readme'),
          content: const Text('Are you sure?'),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text('Yes')),
            TextButton(onPressed: (){}, child: const Text('No')),

        ]),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[200],
        child: ListView(children: [
          DrawerHeader(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6l_cwDg7rzNm2dIHKlRLzh9LeIRFVyAQyqA&usqp=CAU'
                      ),),
                      
           
          ),
           SizedBox(
            height: 5,
          ),
           Text('BOOKS SHOP',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
                  ],
                ),
              )),
           ListTile(
           onTap: (){
            myDialog();
           },
            trailing: const Icon(Icons.home_outlined),
            title: const Text('HOME'),
            
          ),
           const ListTile(
            trailing: Icon(Icons.my_location_outlined),
            title: Text('LOCATION'),
          ),
           const ListTile(
            trailing: Icon(Icons.call_outlined),
            title: Text('CONTACT US'),
          ),
           const ListTile(
            trailing: Icon(Icons.logout_outlined),
            title: Text('LOGOUT'),
          ),

        ]),
      ),
    );
  }
}
