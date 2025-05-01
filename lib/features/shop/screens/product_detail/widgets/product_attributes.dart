import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/common/widgets/texts/product_price_text.dart';
import 'package:demo/common/widgets/texts/product_title_text.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //selected attribute priceing & description
        TRoundedContainer(
          padding: EdgeInsets.all(TSize.md),
          backgroundColor: TColors.grey,
          child: Column(
            children: [
              //title,price and stock status
              Row(
                children: [
                  TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: TSize.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(
                            title: 'Price :',
                            smallSize: true,
                          ),

                          //actual price

                          SizedBox(
                            width: TSize.sm,
                          ),

                          TProductPriceText(price: '150 /1kg')
                        ],
                      ),

                      //stock
                      Row(
                        children: [
                          TProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'Available',
                            style:
                                TextStyle(color: TColors.primary, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              //variation description
            ],
          ),
        ),
        SizedBox(
          height: TSize.spaceBtwItems,
        ),

        //attributes
      ],
    );
  }
}
