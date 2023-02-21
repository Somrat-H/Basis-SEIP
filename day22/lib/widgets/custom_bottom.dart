import 'package:flutter/material.dart';
class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 10, 106, 76)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('images/google_logo.png'),
                        ),
                        Text('Google LLC'),
                        SizedBox(width:90,),
                        Icon(Icons.bookmark_border),
                  
                      ],
                    ),
                    Center(child: Text('Product Design'),),
                    Row(
                      children: [
                        Icon(Icons.location_on_sharp),
                        Text('417 Marian Plaza, Texax, USA'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Container(
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 10, 106, 76)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('images/google_logo.png'),
                        ),
                        Text('Google LLC'),
                         SizedBox(width:90,),
                        Icon(Icons.bookmark_border),
                  
                      ],
                    ),
                    Center(child: Text('Product Design'),),
                    Row(
                      children: [
                        Icon(Icons.location_on_sharp),
                       
                        Text('417 Marian Plaza, Texax, USA'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Container(
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 10, 106, 76)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('images/google_logo.png'),
                        ),
                        Text('Google LLC'),
                        SizedBox(width:90,),
                        Icon(Icons.bookmark_border),
                  
                      ],
                    ),
                    Center(child: Text('Product Design'),),
                    Row(
                      children: [
                        Icon(Icons.location_on_sharp),
                        Text('417 Marian Plaza, Texax, USA'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Container(
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 10, 106, 76)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('images/google_logo.png'),
                        ),
                        Text('Google LLC'),
                         SizedBox(width:90,),
                        Icon(Icons.bookmark_border),
                  
                      ],
                    ),
                    Center(child: Text('Product Design'),),
                    Row(
                      children: [
                        Icon(Icons.location_on_sharp),
                        Text('417 Marian Plaza, Texax, USA'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}