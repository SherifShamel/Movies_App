import 'package:flutter/material.dart';
import 'package:movies_app/features/browse_feature/presentation/pages/search_view.dart';
import 'package:movies_app/features/home_freature/presentation/pages/main.dart';
import 'package:movies_app/features/home_freature/presentation/widgets/main_movie.dart';
import 'package:movies_app/features/search_feature/presentation/pages/search_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});
  static const String routeName = 'layoutView';

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> screens = [
    const MainMovie(),
    const SearchView(),
    const BrowseView(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Browse",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.list_alt_sharp),
          //   label: "Watch List",
          // )
        ],
      ),
    );
  }
}
