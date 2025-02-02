import 'package:flutter/material.dart';

import '../../../../../core/utls/assets.dart';


class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(image: AssetImage(AssetsData.logo),
                fit: BoxFit.fill)
        ),
      ),
    );
  }
}
