import 'package:demo/common/widgets/images/t_circular_image.dart';
import 'package:demo/features/personalizaion/controller/user_controller.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading: const TCircularImage(
        image: ImageString.profile,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        controller.user.value.fullName,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.textWhite),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit),
        color: TColors.textWhite,
      ),
    );
  }
}
