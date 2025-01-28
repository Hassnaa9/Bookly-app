import 'package:flutter/material.dart';

import '../../../../../core/utls/assets.dart';


class CustomAppBar extends StatelessWidget {
  final String logoAsset;
  final IconData searchIcon;
  final EdgeInsets padding;

  const CustomAppBar({
    super.key,
    this.logoAsset = AssetsData.logo,
    this.searchIcon = Icons.search_rounded,
    this.padding = const EdgeInsets.symmetric(horizontal: 27, vertical: 40),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Image.asset(logoAsset, height: 18),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(searchIcon, size: 35),
            tooltip: 'Search',
          ),
        ],
      ),
    );
  }
}
