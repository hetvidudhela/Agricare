import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/product/sortable/sortable_products.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}
