import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/images/t_circular_image.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/features/personalizaion/controller/user_controller.dart';
import 'package:demo/features/personalizaion/screens/profile/widget/profile_menu.dart';
import 'package:demo/features/shop/screens/checkout/change_name.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              // profile pic
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: ImageString.user,
                      width: 135,
                      height: 135,
                    ),
                    TextButton(
                        onPressed: () {}, child: const Text('Change image'))
                  ],
                ),
              ),
              //details

              const SizedBox(
                height: TSize.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              TProfileMenu(
                onPressed: () => Get.to(() => const ChangeName()),
                title: 'Name',
                value: controller.user.value.fullName,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: controller.user.value.username,
              ),
              //personal information

              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              const TSectionHeading(
                title: 'More Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'User Id',
                icon: Iconsax.copy,
                value: controller.user.value.id,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'E-Mail',
                value: controller.user.value.email,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Phoneno',
                value: '9023404408',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              TextButton(
                  onPressed: () => controller.deleteAccountWaringPopup(),
                  child: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
