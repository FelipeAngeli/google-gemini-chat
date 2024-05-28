import 'package:flutter_gemini/flutter_gemini.dart';
import 'utils/config_loader.dart';

class AppInitializer {
  static Future<void> initialize() async {
    final configLoader = ConfigLoader(configPath: 'assets/config/config.json');
    final config = await configLoader.loadConfig();
    final apiKey = config['apiKey'];

    Gemini.init(apiKey: apiKey);
  }
}
