import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/custom_shapes/container/primary_header_conainer.dart';
import 'package:demo/common/widgets/list_tiles/settings_menu_tile.dart';

import 'package:demo/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/data/reposiories/authentication/authentication_repository.dart';
import 'package:demo/features/personalizaion/screens/address/address.dart';
import 'package:demo/features/personalizaion/screens/profile/widget/profile.dart';
import 'package:demo/features/shop/screens/order/order.dart';
import 'package:demo/utils/constans/colors.dart';

import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            TprimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.textWhite),
                  ),
                ),
                TUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: TSize.spaceBtwSections,
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  // account settings
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set your Address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add or Remove products',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-Progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to register your bank account',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subtitle: 'Set any kind of notification messages',
                    onTap: () {},
                  ),

                  //app settings
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  const TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload data to your firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'Image quality',
                    subtitle: 'Set image quality',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () async {
                          await AuthenticationRepository.instance.logout();
                        },
                        child: const Text('Log out')),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections * 2.5,
                  ),
                ],
              ),
            )

            //body
          ],
        ),
      ),
    );
  }
}
