import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment{
  static String get fileName{
    if(kReleaseMode){
      return '.env.production';
    }
    return '.env.development';
  }

  // * Without null safety
  static String get method1{
    return dotenv.env['URL'] ?? 'URL not found';
  }

  // * With null safety (throws an exception if the variable is undefined)
  static String get method2{
    return dotenv.get('URL_DOC', fallback: 'URL not found');
  }
}