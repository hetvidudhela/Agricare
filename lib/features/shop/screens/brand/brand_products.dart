import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/brand/brand_card.dart';
import 'package:demo/common/widgets/product/sortable/sortable_products.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Ankur'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              //Brand Detail
              TBrandCard(showBorder: true),
              SizedBox(
                height: TSize.spaceBtwSections,
              ),

              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
