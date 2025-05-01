import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/appbar/tabbar.dart';
import 'package:demo/common/widgets/brand/brand_card.dart';
import 'package:demo/common/widgets/custom_shapes/container/search_container.dart';
import 'package:demo/common/widgets/layout/grid_layout.dart';
import 'package:demo/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/features/shop/controller/category_controller.dart';
import 'package:demo/features/shop/screens/brand/all_brands.dart';
import 'package:demo/features/shop/screens/store/widget/category_tab.dart';

import 'package:demo/utils/constans/colors.dart';

import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CategoryController.instance.featuredCategories;
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCountericon(
              iconColor: Colors.black,
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.textWhite,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSize.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          //search bar
                          const SizedBox(
                            height: TSize.spaceBtwItems,
                          ),
                          const TSearchContainer(
                              text: 'Search items...',
                              showBorder: true,
                              showBackground: false,
                              padding: EdgeInsets.zero),
                          const SizedBox(
                            height: TSize.spaceBtwSections,
                          ),

                          //feature brands

                          TSectionHeading(
                            title: 'Popular Brands',
                            onPressed: () =>
                                Get.to(() => const AllBrandsScreen()),
                          ),
                          const SizedBox(
                            height: TSize.spaceBtwItems / 1.5,
                          ),

                          TGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const TBrandCard(
                                  showBorder: false,
                                );
                              })
                        ],
                      ),
                    ),
                    // tab
                    bottom: TTabBar(
                        tabs: categories
                            .map((category) => Tab(child: Text(category.name)))
                            .toList()))
              ];
            },
            body: TabBarView(
                children: categories
                    .map((category) => TCstegoryTab(category: category))
                    .toList())),
      ),
    );
  }
}
