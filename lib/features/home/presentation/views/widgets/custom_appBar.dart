import 'package:flutter/material.dart';

import '../../../../../core/utls/assets.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.logo
            ,height: 18, ),
          const Spacer(),
          IconButton(onPressed: () {},
              icon: const Icon(Icons.search_rounded, size: 27,))
        ],
      ),
    );
  }
}
