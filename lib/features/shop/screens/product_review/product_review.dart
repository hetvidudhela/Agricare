import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
              'Reviews are verified by the farmers who already purchased this product.'),
          SizedBox(
            height: TSize.spaceBtwItems,
          )
        ],
      ),
    );
  }
}
