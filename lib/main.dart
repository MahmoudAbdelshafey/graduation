import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Gemini.reInitialize(apiKey: "AIzaSyDLCo1A2Ssddkcd8jkaFMJB9ovfqb3Mtl0", enableDebugging: false);

  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding")??false;
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) =>  MyApp(),
    ),
  );
}
