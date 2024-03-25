import 'package:flutter/material.dart';
import 'package:movies_app/config/themes.dart';
import 'package:movies_app/features/home_freature/presentation/widgets/main_movie.dart';
import 'package:movies_app/features/layout_feature/presentation/pages/layout_view.dart';

class HomeView extends StatelessWidget {
  static const String routeName = 'homeView';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: LayoutView(),
    );
  }
}
