import 'package:flutter/material.dart';
class ResultView extends StatelessWidget {

  int ?result;
  ResultView({super.key, this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: result! < 18 ? SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Result'),
              Text("$result", style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w800,
              )),
              Image.network('https://media.tenor.com/kTf3OWtu06MAAAAd/moonisajedi-skinny.gif', fit: BoxFit.fill,),
              
            ],
          ),
        ): result! >= 18 && result! <= 22 ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Result'),
            Text("$result", style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w800,
            )),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJxWHJu42ydFrXGrvE5vFTMOrBU2IlBRXsNQ&usqp=CAU')
          ]
        ) : result! > 22 ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Result'),
            Text("$result", style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w800,
            )),
            Image.network('https://media.tenor.com/KPnVAsRYrT0AAAAM/peloton-getting-fit.gif'),
          ],
        ) : const Text(''),

      )
    );
  }
}