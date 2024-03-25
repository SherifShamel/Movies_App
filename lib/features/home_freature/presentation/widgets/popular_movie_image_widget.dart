import 'package:flutter/material.dart';

class PopularMovieImage extends StatelessWidget {
  const PopularMovieImage({super.key});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height*0.3,
      child: Image.asset(
        'assets/img/Image.png',
        fit: BoxFit.cover,
      ),
    );
  }
}