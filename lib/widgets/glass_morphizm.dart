import "dart:ui";

import "package:flutter/material.dart";
import "package:weather_app/utils/themes.dart";

/// GlassMorpContainer, a widget for glass morphizm effect
class GlassMorpContainer extends StatelessWidget {
  /// Constructor for GlassMorpContainer
  final Widget child;

  final double blur;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final BoxBorder? border;
  final Gradient? gradient;
  const GlassMorpContainer({
    super.key,
    required this.child,
    required this.blur,
    this.border,
    this.color,
    this.gradient,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  });

  @override
  Widget build(final BuildContext context) => ClipRRect(
        // borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            decoration: BoxDecoration(
              color: color,
              gradient: gradient ?? CustomTheme.secondGradient,
              borderRadius: borderRadius,
              border: border ??
                  Border.all(
                    width: 2,
                    color: CustomTheme.borderColor,
                  ),
            ),
            child: child,
          ),
        ),
      );
}
