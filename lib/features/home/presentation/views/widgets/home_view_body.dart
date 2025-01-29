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
        CustomBooksListView()
      ],
    );
  }
}
class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8),
              child:  CustomListViewItem());
          }),
    );
  }
}
