import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TimeOfDay? pickedTime;
  DateTime? pickedDate;
  String? date;
  String? time;
  DateTime? cdate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date and Time Picker'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                DateTime? finalDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (finalDate != null) {
                  setState(() {
                    pickedDate = finalDate;
                  });
                }
                date = DateFormat('dd-MM-yyyy').format(pickedDate!);
              },
              child: const Text('Pick Date'),
            ),
            Text(date != null ? '$date' : ''),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? finalTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (finalTime != null) {
                  setState(() {
                    pickedTime = finalTime;
                  });
                }
                pickedTime = DateFormat.jm().format(pickedTime as DateTime)
                    as TimeOfDay?;
              },
              child: const Text('Pick Time'),
            ),
            Text(pickedTime != null ? '$pickedTime' : ''),
            const SizedBox(
              height: 10,
            ),
            const Text('Cupertunio Picker'),
            CupertinoButton(
              child: const Text('DatePicked'),
              onPressed: () => showCupertinoModalPopup(
                  context: context,
                  builder: (_) => SizedBox(
                        height: 500,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.amber.shade100,
                                ),
                                height: 300,
                                child: CupertinoDatePicker(
                                    initialDateTime: DateTime.now(),
                                    onDateTimeChanged: (val) {
                                      setState(() {
                                        cdate = val;
                                      });
                                    }),
                              ),
                            ),
                            CupertinoButton(
                              child: const Text('OK'),
                              onPressed: () => Navigator.of(context).pop(),
                            )
                          ],
                        ),
                      )),
            ),
            Text(cdate != null ? '$cdate' : ''),
          ],
        ),
      ),
    );
  }
}
