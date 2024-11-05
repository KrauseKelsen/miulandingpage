import 'package:flutter/material.dart';
import 'package:miulandingpage/presentation/screens/home_screen.dart';

import 'config/theme/app_theme.dart';

// En esta app se hace uso de: Providers, Imagenes, Dio (https), Factory, Mappers, AppTheme, ValueChanged
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Esto envuelve toda la app en el provider, para que todos sus hijos puedan usar el gestor de estado
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),
        title: 'Yes No App',
        home: const HomeScreen());
  }
}
