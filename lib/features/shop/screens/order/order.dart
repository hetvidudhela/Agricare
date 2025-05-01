import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/features/shop/screens/order/widgets/orders_list.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: TAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),

        //Orders
        child: TOrderListItems(),
      ),
    );
  }
}
