import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS15ItPfseut13T4kDqanqgKO63KiaCLDJZPw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Jp05lMLWdATxA9GZmVOC-v6IwXr7LlbKAg&usqp=CAU'
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.greenAccent,
      endDrawer: Drawer(
        backgroundColor: Colors.amber.shade100,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'FINTIMES',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Icon(Icons.menu),
                    IconButton(onPressed: (){
                     _scaffoldKey.currentState!.openEndDrawer();
                    }, icon: const Icon(Icons.menu)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  width: 90,
                  color: Colors.black,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "TOP APP22",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Introducing the first ',
                  style: TextStyle(
                    fontSize: 17,
                  )
                ),
                TextSpan(
                  text: 'all-in-one tool',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                  
                ),
                TextSpan(text: ' to\nhelp you put your financial assets in the\nbest possible opportunities',
                  style: TextStyle(
                    fontSize: 17,
                  )
                ),
              ],
            ),
            )
              ],
            ),
          ),
          const Divider(
            thickness: 3,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Strategy',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(
                      Icons.play_circle,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'INVESTMENT PROCESS',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 3,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Team',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    FlutterImageStack(
                      imageList: image,
                      totalCount: image.length,
                      itemRadius: 30,
                      itemBorderWidth: 1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'CHECK OUR EXPERTS',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
           const Divider(
            thickness: 3,
            color: Colors.black,
          ),
           Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Container(
                      height: 30,
                      width: 25,
                      color: Colors.black,
                      child:  const Padding(
                        padding:  EdgeInsets.all(1.0),
                        child: Text('W', style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                     SizedBox(width: 5,),
                    const Text('I', style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 10,),
                     Container(
                       height: 30,
                       width: 25,
                       color: Colors.black,
                       child: const Padding(
                         padding:  EdgeInsets.all(1.0),
                         child: Center(
                           child: Text('R', style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                           ),),
                         ),
                       ),
                     ),
                     const SizedBox(width: 5,),
                     const Center(
                       child: Text('E', style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),),
                     ),
                         const SizedBox(width: 5,),
                     Container(
                       height: 30,
                       width: 25,
                       color: Colors.black,
                       child: const Padding(
                         padding:  EdgeInsets.all(1.0),
                         child: Center(
                           child: Text('D', style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                           ),),
                         ),
                       ),
                     ),

                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'OUR PRATNERS',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
