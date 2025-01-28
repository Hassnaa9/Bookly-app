import 'package:flutter/material.dart';
import 'custom_appBar.dart';
import 'custom_list_view_item.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem()
      ],
    );
  }
}