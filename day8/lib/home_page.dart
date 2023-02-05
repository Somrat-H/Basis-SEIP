import 'package:day8/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          
          children: [
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            const SizedBox(height: 10,),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text('Camera')),
                const SizedBox(height: 10,),
            OutlinedButton(
                onPressed: () {}, child: const Text("OutlinedButton")),
                const SizedBox(height: 10,),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.delete_outline),
                label: const Text('Delete')),
                const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton')),
                const SizedBox(height: 10,),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.alarm_on_outlined),
                label: const Text('Alarm')),
                const SizedBox(height: 10,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.wifi_outlined,
            color: Colors.purple,
            )),
            const SizedBox(height: 10,),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
