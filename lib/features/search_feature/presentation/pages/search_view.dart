import 'package:flutter/material.dart';
import 'package:movies_app/config/themes.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static const String routeName = 'searchView';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Search View",
        style: ApplicationThemeManager.mainTheme.textTheme.bodyLarge,
      ),
    );
  }
}
