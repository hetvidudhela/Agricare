import 'package:demo/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class TcurvedEdgeWidget extends StatelessWidget {
  const TcurvedEdgeWidget({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
