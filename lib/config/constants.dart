import 'package:flutter/material.dart';
import 'package:movies_app/main.dart';

class Constants {
  static var size = MediaQuery.of(navigatorKey.currentState!.context).size;
  static const String apiKey = "50b80f8e049cf4d78c581abad47e57f1";
  static const String baseUrl = "api.themoviedb.org";

  // static const String imagePath = ""
  static const String imageBaseUrl = "https://image.tmdb.org/t/p/w500";
}
