import 'package:flutter/material.dart';
import 'package:productos_app/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Productos App',
      initialRoute: 'login',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen()
      },
    theme: ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.grey[300],
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.indigo
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.indigo,
        elevation: 0
      )
    ),
      );
  }
}