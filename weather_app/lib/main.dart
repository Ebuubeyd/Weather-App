import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Screens/splashScreen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Viather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPageCollector(),
    );
  }
}

class MainPageCollector extends StatefulWidget {
  const MainPageCollector({super.key});

  @override
  State<MainPageCollector> createState() => _MainPageCollectorState();
}

class _MainPageCollectorState extends State<MainPageCollector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF1F0D70),
            Color(0xFF624A8F),
          ],
          stops: [0.3, 0.9],
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SplashScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
