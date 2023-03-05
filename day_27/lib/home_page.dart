import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(items: [
          CachedNetworkImage(imageUrl: '',
          errorWidget: (context, url, error) => Icon(Icons.error_outline),
          placeholder: (context, url) => CircularProgressIndicator(),),
          
        ], options: CarouselOptions(

        ))
      ),
    );
  }
}