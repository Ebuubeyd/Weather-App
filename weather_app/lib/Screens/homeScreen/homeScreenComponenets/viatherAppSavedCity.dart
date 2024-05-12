import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/MediaQuery/mq_values.dart';

import '../../locationScreen/searchScreen.dart';

class ViatherAppSavedCity extends StatefulWidget {
  const ViatherAppSavedCity({super.key});

  @override
  State<ViatherAppSavedCity> createState() => _ViatherAppSavedCityState();
}

class _ViatherAppSavedCityState extends State<ViatherAppSavedCity> {
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
                'Diğer Şehirler',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {
                  Get.to(
                    SearchScreen(),
                  );
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: context.dynamicHeight(0.09),
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                width: 225,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(),
                    Image.asset(
                      'assets/icons/sun/clear_sky-1.png',
                      width: 36,
                      height: 36,
                    ),
                    SizedBox(
                      width: context.dynamicWidth(0.02),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'İstanbul',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Güneşli',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: context.dynamicWidth(0.08),
                    ),
                    Text(
                      '25°',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: context.dynamicWidth(0.02),
                    ),
                    Spacer(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
