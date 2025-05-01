import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/common/widgets/product/cart/coupon_widget.dart';
import 'package:demo/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:demo/features/shop/screens/cart/widget/cart_items.dart';
import 'package:demo/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:demo/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:demo/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:demo/navigation_menu.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Order Review',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              //Items in Cart
              const TCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //Coupon Textfield
              const TCouponCode(),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSize.md),
                backgroundColor: dark ? TColors.black : TColors.textWhite,
                child: const Column(
                  children: [
                    //Pricing
                    TBillingAmountSection(),
                    SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    //Divider
                    Divider(),
                    SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    //Payment Methods
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    //Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      //Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SucessScreen(
                image: ImageString.logo1, // success icon
                title: 'Payment Success',
                subTitle: 'Your Item will be Shipped Soon',
                onpressed: () => Get.offAll(() => const NevigationMenu()))),
            child: const Text('Checkout ₹599')),
      ),
    );
  }
}
