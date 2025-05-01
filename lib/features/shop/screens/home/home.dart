import 'package:demo/common/widgets/custom_shapes/container/primary_header_conainer.dart';
import 'package:demo/common/widgets/custom_shapes/container/search_container.dart';
import 'package:demo/common/widgets/layout/grid_layout.dart';
import 'package:demo/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:demo/common/widgets/shimmer/vertical_product_shimmer.dart';

import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/features/shop/controller/product_controller.dart';
import 'package:demo/features/shop/screens/all_products/all_products.dart';
import 'package:demo/features/shop/screens/home/home_categories.dart';
import 'package:demo/features/shop/screens/home/widget/home_appbar.dart';
import 'package:demo/features/shop/screens/home/widget/promo_slider.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(ProductController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //heading

            const TprimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),
                SizedBox(
                  height: TSize.spaceBtwSections,
                ),

                //searchbar

                TSearchContainer(
                  text: 'Search crops , help',
                ),
                SizedBox(
                  height: TSize.spaceBtwSections,
                ),

                //catagories

                Padding(
                  padding: EdgeInsets.only(left: TSize.defaultSpace),
                  child: Column(
                    children: [
                      // heading
                      TSectionHeading(
                        textColor: Colors.white,
                        title: 'Popular Categories',
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: TSize.spaceBtwItems,
                      ),

                      //catagories

                      THomeCategories()
                    ],
                  ),
                ),

                SizedBox(
                  height: TSize.spaceBtwSections,
                )
              ],
            )),

            //body
            Padding(
                padding: const EdgeInsets.all(TSize.defaultSpace),
                child: Column(
                  children: [
                    // ----------- promo slider-------------
                    const TPromoSlider(
                      banners: [
                        ImageString.banner1,
                        ImageString.banner2,
                        ImageString.banner3,
                      ],
                    ),
                    const SizedBox(
                      height: TSize.spaceBtwSections,
                    ),
                    //---- Seasonal Picks
                    TSectionHeading(
                      title: 'Seasonal Picks',
                      onPressed: () => Get.to(() => const AllProducts()),
                    ),
                    const SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    Obx(() {
                      if (controller.isLoading.value) {
                        return const TVerticalProductShimmer();
                      }
                      if (controller.featuredProducts.isEmpty) {
                        return Center(
                          child: Text(
                            'No data found!',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        );
                      }

                      return TGridLayout(
                          itemCount: controller.featuredProducts.length,
                          itemBuilder: (_, index) => TProductCardVertical(
                                product: controller.featuredProducts[index],
                              ));
                    }),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
