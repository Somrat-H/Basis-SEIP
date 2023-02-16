import 'package:day19/result_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height=130;
  int weight = 50;
  int age = 25;
  double ? bmi;
  bool isMale = false;
  Color cardColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'B M I Calculator',
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: InkWell(
                          onTap: (() {
                            setState(() {
                              isMale = true;
                            });
                          }),
                          child: Card(
                            color: isMale == true ? Colors.white : cardColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 45,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 5,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Card(
                            color: isMale == true ? cardColor : Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const[
                                Icon(
                                  Icons.female,
                                  size: 45,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                )),
            Expanded(
                flex: 5,
                child: Card(
                  color: Colors.white,
                  child: Column(children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                        Text('CM'),
                      ],
                    ),
                    Slider(
                        min: 130,
                        max: 210,
                        thumbColor: Colors.pink,
                        activeColor: Colors.pink.shade800,
                        inactiveColor: Colors.grey,
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        })
                  ]),
                )),
            Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      color: Colors.white,
                      child: Column(children: [
                        Text(
                          'Weight',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(fontSize: 40),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.black,
                              mini: true,
                              onPressed: () {
                                if (weight > 1) {
                                  setState(() {
                                    weight--;
                                  });
                                }
                              },
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.black,
                              mini: true,
                              onPressed: () {
                               
                                  setState(() {
                                    weight++;
                                  });
                                
                              },
                              child: Icon(Icons.add),
                            )
                          ],
                        )
                      ]),
                    )),
                    Expanded(
                        child: Card(
                      color: Colors.white,
                      child: Column(children: [
                        Text(
                          'Age',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '$age',
                          style: TextStyle(fontSize: 40),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.black,
                              mini: true,
                              onPressed: () {
                                if (age > 1) {
                                  setState(() {
                                    age--;
                                  });
                                }
                              },
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.black,
                              mini: true,
                              onPressed: () {
                               
                                  setState(() {
                                    age++;
                                  });
                                
                              },
                              child: Icon(Icons.add),
                            )
                          ],
                        )
                      ]),
                    )),
                  ],
                )),
            MaterialButton(
              minWidth: 500,
              height: 60,
              color: Colors.blueGrey,
              onPressed: () {
              setState(() {
              double h = height / 100;

              double heightSquare = h * h;
              double result = weight / heightSquare;
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultView(result: result.toInt(),))); 

              });
              },
              child: Text(
                'Calculate',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
