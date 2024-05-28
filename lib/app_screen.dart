import 'package:flutter/material.dart';
import 'package:gemini_ai_project/screen/chat_screen.dart';
import 'package:gemini_ai_project/screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'providers/chat_provider.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const ChatScreen(),
        },
      ),
    );
  }
}
