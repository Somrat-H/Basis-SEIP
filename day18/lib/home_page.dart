import 'package:day18/model/user_model.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 48, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 43, 61, 51),
        title: const Text('WhatsChat', style: TextStyle(
          color: Colors.white38,

        ),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined,    color: Colors.white38,),
            tooltip: 'Capture Photo',
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,    color: Colors.white38,),
          
            tooltip: 'Search',
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,    color: Colors.white38,), 
            tooltip: 'More Option',
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: const Color.fromARGB(211, 55, 205, 113),
        child: IconButton(onPressed: (){}, icon: const Icon(Icons.message), color: Colors.white,
         tooltip: 'New Chat',
        ),
      ),
      body: ListView.builder(
        itemCount: myUserList.length,
        itemBuilder: (context, index){
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('${myUserList[index].image}'),
        ),
        title: Text('${myUserList[index].name}', style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        subtitle: myUserList[index].isNewMessage == true ? Text('${myUserList[index].text}'
         , style: const TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.white,
         ),
        ): myUserList[index].isRecived == true ? Row(
          children: [
            const Icon(Icons.done_all, color: Colors.white38,),
            const SizedBox(width: 2,),
            Text('${myUserList[index].text}', style: const TextStyle(
              color: Colors.white54,

            ),)
          ],
        ): myUserList[index].isSent == true ? Row(
          children: [
            const Icon(Icons.done, color: Colors.white38,),
            const SizedBox(width: 2,),
            Text('${myUserList[index].text}', style: const TextStyle(
              color: Colors.white54,

            ),),
          ],
      ): null,

      trailing: Text('${myUserList[index].time}', style: const TextStyle(
        color: Colors.white54,
      ),),
      );

      }),
    );
  }
}