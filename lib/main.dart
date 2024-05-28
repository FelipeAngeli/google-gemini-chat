import 'package:flutter/material.dart';
import 'package:gemini_ai_project/app_initializer.dart';
import 'package:gemini_ai_project/app_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initialize();
  runApp(const AppScreen());
}
