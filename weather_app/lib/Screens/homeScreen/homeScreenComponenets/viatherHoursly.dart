import 'package:flutter/material.dart';
import 'package:weather_app/MediaQuery/mq_values.dart';

class ViatherHoursly extends StatefulWidget {
  const ViatherHoursly({super.key});

  @override
  State<ViatherHoursly> createState() => _ViatherHourslyState();
}

class _ViatherHourslyState extends State<ViatherHoursly> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Saatlik Hava Durumu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'See all',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        Container(
            height: context.dynamicHeight(0.18),
            child: ListView.builder(
              itemCount: 12,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  width: 75,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(160, 181, 169, 232),
                        Color.fromARGB(173, 58, 32, 106),
                      ],
                      stops: [0.3, 0.9],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '12:00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Image.asset(
                        'assets/icons/sun/clear_sky-1.png',
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '25°C',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                );
              },
            )),
      ],
    );
  }
}
