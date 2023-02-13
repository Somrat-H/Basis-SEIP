import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                10
              ),
              child: Stack(children: [
                 ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network('https://media-s3-us-east-1.ceros.com/terminus/images/2021/01/21/ca166018d20d5142d5639d974c60bb94/pup4-2.gif',
                fit: BoxFit.cover,
                ),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                    right: 5
                  ),
                  child: CircleAvatar(
                    child: Icon(Icons.favorite),
                  ),
                ),
              )
              ],),
            ),
            ListTile(
              title: Row(
                children: const[
                   SizedBox(width: 5,),
                  Text('Moni Charli', style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const[
                  Icon(Icons.location_on_outlined,),
                  
                  Text('Distance (near 10km)', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),)
                ],
              ),
              trailing: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.male, color: Colors.black,)),
            ),
            // const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS44GEBI3itkGmqDQH2nEgzkTvwISd_ONOwkg&usqp=CAU')
                      ),
                      const SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: const[
                          
                          Text('Anthony Higa', style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),),
                          SizedBox(height: 5,),
                           Text('Pet Owner', style: TextStyle(
                            fontSize: 11,
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                          ),),
                        ],
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
      
                    children: const[
                      
                        Text('12 FEB, 2023', style: TextStyle(
                            fontSize: 11,
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                          ),),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 40,
                            top: 8,
                            bottom: 8, 
                            
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                               Text('Age', style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                 Text('1 Year 2 Months', style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700,
                                ),),
                            ],
                          ),
                        ),
                       const Padding(
                         padding: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                         ),
                         child: VerticalDivider(
                          thickness: 1,
                          
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 40,
                            top: 8,
                            bottom: 8,
      
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                               Text('Weight', style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                 Text('4 Kg 5 Gram', style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700,
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),   
        
      
    );
  }
}