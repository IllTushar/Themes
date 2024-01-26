import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/provider/ThemeProvider.dart';

class DarkTheme extends StatefulWidget {
  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("Theme")),
        ),
        body: Column(
          children: [
            radioList("Light Mode", themeProvider, ThemeMode.light),
            radioList("Dark Mode", themeProvider, ThemeMode.dark),
            radioList("System Mode", themeProvider, ThemeMode.system),
            const Icon(Icons.favorite)
          ],
        ),
      ),
    );
  }

  Widget radioList(String title, ThemeProvider themeProvider, ThemeMode theme) {
    return RadioListTile(
        title: Text(title),
        value: theme,
        groupValue: themeProvider.theme,
        onChanged: themeProvider.setTheme);
  }
}
