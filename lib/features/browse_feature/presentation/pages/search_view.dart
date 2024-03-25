import 'package:flutter/material.dart';
import 'package:movies_app/config/themes.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});
  static const String routeName = 'browseView';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Browse View",
        style: ApplicationThemeManager.mainTheme.textTheme.bodyLarge,
      ),
    );
  }
}
