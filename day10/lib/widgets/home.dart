import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classroom App'),
        backgroundColor: const Color.fromARGB(255, 231, 79, 79),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 79, 79),
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            elevation: 0,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(background: Image.asset('image/appbar.png', 
            fit: BoxFit.fill ,
            
            )),
            // title: const Text('Classroom App'),
            // titleTextStyle: const TextStyle(
            //   fontSize: 25,
            //   color: Color.fromARGB(255, 231, 79, 79),
            //   fontWeight: FontWeight.w500,
            // ),
            
          ),
          
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ListTile(
                  title: Text('Classes'),
                  leading: Icon(Icons.class_outlined),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  title: Text('Class Record'),
                  leading: Icon(Icons.play_circle),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  title: Text('Class Routine'),
                  leading: Icon(Icons.schedule_outlined),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  title: Text('Exam Routine'),
                  leading: Icon(Icons.pages),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  title: Text('Result'),
                  leading: Icon(Icons.question_answer_outlined),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  title: Text('Teacher Contact Info'),
                  leading: Icon(Icons.contacts_outlined),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ]
          ))
        ],
      ),
    );
  }
}