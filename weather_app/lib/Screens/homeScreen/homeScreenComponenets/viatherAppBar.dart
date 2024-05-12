import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../locationScreen/searchScreen.dart';

class ViatherAppBar extends StatefulWidget {
  const ViatherAppBar({super.key});

  @override
  State<ViatherAppBar> createState() => _ViatherAppBarState();
}

class _ViatherAppBarState extends State<ViatherAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        Text(
          'Bursa',
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Get.to(
              SearchScreen(),
            );
          },
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
