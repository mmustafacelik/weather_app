import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

///This class is responsible for creating a Snackbar from top .
class CustomToast extends StatefulWidget {
  ///
  const CustomToast({
    required this.text,
    super.key,
    this.duration = const Duration(seconds: 3),
    this.transitionDuration = const Duration(milliseconds: 250),
  });

  ///this is the text that will be displayed in the toast.
  final String text;

  ///this is the duration of the toast.
  final Duration duration;

  ///this is the duration of the transition of the toast.
  final Duration transitionDuration;

  @override
  State<CustomToast> createState() => _CustomToastState();
  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty("text", text))
      ..add(
        DiagnosticsProperty<Duration>("transitionDuration", transitionDuration),
      )
      ..add(DiagnosticsProperty<Duration>("duration", duration));
  }
}

class _CustomToastState extends State<CustomToast>
    with SingleTickerProviderStateMixin {
  late final AnimationController opacity;

  @override
  void initState() {
    super.initState();
    opacity = AnimationController(
      vsync: this,
      duration: widget.transitionDuration,
    )..forward();

    final Duration startFadeOutAt = widget.duration - widget.transitionDuration;

    Future.delayed(startFadeOutAt, () => opacity.reverse());
  }

  @override
  void dispose() {
    opacity.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => FadeTransition(
        opacity: opacity,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.65),
              borderRadius: const BorderRadius.all(Radius.circular(32)),
            ),
            margin: const EdgeInsets.only(left: 16, right: 16, bottom: 78),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 14,
            ),
            child: Material(
              color: Colors.transparent,
              child: Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      );

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<AnimationController>("opacity", opacity));
  }
}
