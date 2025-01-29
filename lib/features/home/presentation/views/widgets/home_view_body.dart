import 'package:bookly/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_appBar.dart';
import 'custom_list_view.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const CustomBooksListView(),
        SizedBox(height: MediaQuery.of(context).size.height*.049,),
        const Text('Best Seller' , style: MyStyles.titleMedium,)
      ],
    );
  }
}
