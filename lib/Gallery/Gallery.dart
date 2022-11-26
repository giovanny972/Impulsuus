import 'package:flutter/material.dart';
import 'GalleryHomePage.dart';

class Mygallery extends StatelessWidget {
  const Mygallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sen'),
      home: const GalleryHomePage(),
    );
  }
}
