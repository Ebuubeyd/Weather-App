import 'package:flutter/material.dart';
import 'package:weather_app/MediaQuery/mq_values.dart';
import 'package:weather_app/Screens/homeScreen/homeScreenComponenets/viatherAppBar.dart';
import 'package:weather_app/Screens/homeScreen/homeScreenComponenets/viatherAppCenter.dart';
import 'package:weather_app/Screens/homeScreen/homeScreenComponenets/viatherAppSavedCity.dart';
import 'package:weather_app/Screens/homeScreen/homeScreenComponenets/viatherHoursly.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
        child: SafeArea(
          child: Column(
            children: [
              ViatherAppBar(),
              ViatherAppCenter(),
              Spacer(),
              Container(
                child: ViatherHoursly(),
              ),
              Spacer(),
              Container(
                child: ViatherAppSavedCity(),
              ),
              SizedBox(
                height: context.dynamicHeight(0.08),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
