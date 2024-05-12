import 'package:flutter/material.dart';

class ViatherAppCenter extends StatefulWidget {
  const ViatherAppCenter({super.key});

  @override
  State<ViatherAppCenter> createState() => _ViatherAppCenterState();
}

class _ViatherAppCenterState extends State<ViatherAppCenter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              child: const Text(
                'Mostly Cloudy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 250,
              height: 250,
              child: Image.asset('assets/icons/cloud/broken_clouds.png'),
            ),
            Container(
              child: const Text(
                '25°C',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: const Text(
                'Friday 10, 2021 | 12:00 PM',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
