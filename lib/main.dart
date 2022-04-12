import 'package:flutter/material.dart';
import 'package:mobx_weeknd/feature/dataListModel/view/datas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.darktheme,
      home: dataView(),
    );
  }
}

class Theme {
  static ThemeData darktheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(backgroundColor: Colors.black));
}
