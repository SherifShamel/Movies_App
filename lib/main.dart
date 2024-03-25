import 'package:flutter/material.dart';
import 'package:movies_app/config/themes.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/features/browse_feature/presentation/pages/search_view.dart';
import 'package:movies_app/features/home_freature/presentation/pages/home_view.dart';
import 'package:movies_app/features/layout_feature/presentation/pages/layout_view.dart';
import 'package:movies_app/features/search_feature/presentation/pages/search_view.dart';
import 'package:movies_app/features/splash_view_feature/presentation/pages/splash_view.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: ApplicationThemeManager.mainTheme,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        HomeView.routeName: (context) => const HomeView(),
        SearchView.routeName: (context) => const SearchView(),
        LayoutView.routeName: (context) => const LayoutView(),
        BrowseView.routeName: (context) => const BrowseView(),
      },
    );
  }
}
