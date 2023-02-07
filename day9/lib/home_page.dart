import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 84, 101, 72),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple.shade300,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 2,
                              color: Colors.black,
                            )
                          ]),
                      child: Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.apple_outlined,
                                size: 50,
                              )
                            ]),
                      ),
                    )),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                    flex: 8,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.more_horiz_rounded,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.calculate,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.ac_unit_rounded,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.cable_rounded,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red.shade300,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, -2),
                              blurRadius: 1,
                              color: Colors.black,
                            )
                          ]),
                      child: const Center(
                        child: Text(
                          "Flutter",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ],
            )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              children: [
                Expanded(
                  child: Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black,
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.image,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black,
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.camera,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black,
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.face,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black,
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red.shade200,
                          boxShadow: const[
                             BoxShadow(
                              offset: Offset(-2, -2),
                              color: Colors.black,
                              blurRadius: 1,
                            )
                          ]),
                      child: const Center(
                        child: Icon(
                          Icons.android,
                          size: 50,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  flex: 8,
                  child: Expanded(
                    child: Expanded(
                        flex: 8,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.play_circle,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.hide_source,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.pause_circle,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.my_location_outlined,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
