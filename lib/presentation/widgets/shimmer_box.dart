import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    Key? key,
    this.size = 512,
    this.borderRadius = 0,
    this.width,
    this.height,
    this.child,
  }) : super(key: key);

  final double size;
  final double borderRadius;
  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final h = height ?? width ?? size;
    final w = width ?? height ?? size;
    final d = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child:
          Container(height: h, width: w, color: Colors.white.withOpacity(0.5)),
    );

    return IgnorePointer(
      child: SizedBox(
        height: h,
        width: w,
        child: Shimmer.fromColors(
          baseColor: Colors.white.withOpacity(0.75),
          highlightColor: Colors.grey.withOpacity(0.5),
          child: child ?? d,
        ),
      ),
    );
  }
}
