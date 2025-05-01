import 'package:demo/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:demo/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class TprimaryHeaderContainer extends StatelessWidget {
  const TprimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroudcolor: TColors.textWhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroudcolor: TColors.textWhite.withOpacity(0.1),
                )),
            child,
          ],
        ),
      ),
    );
  }
}
