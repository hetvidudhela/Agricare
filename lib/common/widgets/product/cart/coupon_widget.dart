import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.textWhite,
      padding: const EdgeInsets.only(
          top: TSize.sm, bottom: TSize.sm, right: TSize.sm, left: TSize.md),
      child: Row(
        children: [
          //Textfield
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a Promo Code? Enter here',
                hintStyle: TextStyle(
                    color: dark ? TColors.textWhite : TColors.black,
                    fontSize: TSize.fontSizeSm,
                    fontWeight: FontWeight.bold),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          //Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? TColors.textWhite.withOpacity(0.5)
                          : TColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                  child: const Text('Apply'))),
        ],
      ),
    );
  }
}
