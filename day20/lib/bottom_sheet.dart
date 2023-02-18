import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetDemo> {
 XFile ? _image;

  pickdImageFromGallery() async{
    ImagePicker picked = ImagePicker();
    _image = (await picked.pickImage(source: ImageSource.camera))!;
    
    setState(() {
      
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration:  BoxDecoration(
        color: Colors.red.shade100,
        
        borderRadius: const BorderRadius.only(
          
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )
      ),
      child: Column(
        
        children: [
          const SizedBox(
            height: 10,
          ),
         MaterialButton(
            color: Colors.black,
            onPressed: (){
              pickdImageFromGallery();
            }, child: const Text('Picked Photo', 
              style: TextStyle(
                color: Colors.white
              ),
            ),),

            const SizedBox(height: 10,),
            Expanded(child: _image != null ?  Image.file(File(_image!.path)): const Text('')),
        ],
      ),
    );
  }
}