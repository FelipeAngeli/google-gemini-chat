import 'dart:convert';
import 'package:flutter/services.dart';

class ConfigLoader {
  final String configPath;

  ConfigLoader({required this.configPath});

  Future<Map<String, dynamic>> loadConfig() async {
    final configString = await rootBundle.loadString(configPath);
    final config = json.decode(configString) as Map<String, dynamic>;
    return config;
  }
}
