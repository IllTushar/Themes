import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/provider/ThemeProvider.dart';
import 'package:theme/screen/dark_theme.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: Builder(builder: (context) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          themeMode: themeProvider.theme,
          theme: ThemeData(
            brightness: Brightness.light,
            appBarTheme: const AppBarTheme(color: Colors.red),
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: const AppBarTheme(color: Colors.cyanAccent),
              iconTheme: const IconThemeData(color: Colors.pink)),
          home: DarkTheme(),
        );
      }),
    );
  }
}
