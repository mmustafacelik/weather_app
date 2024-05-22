part of "extensions.dart";

///This extension is responsible for adding some functionalities to the BuildContext.
extension ContextExtension on BuildContext {
  ///add the MediaQuery to the context.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ///add the theme to the context.
  ThemeData get theme => Theme.of(this);

  ///add the brightness to the context.
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  ///add the overlay to the context.
  OverlayState get overlay => Overlay.of(this);

  ///add the scaffoldMessenger to the context.
  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(this);

  ///add the navigator to the context.
  NavigatorState get navigator => Navigator.of(this);

  ///add the textDirection to the context.
  TextDirection get textDirection => Directionality.of(this);

  ///add the displayLarge to the context.
  TextStyle? get dispLarge => Theme.of(this).textTheme.displayLarge;

  ///add the displayMedium to the context.
  TextStyle? get dispMid => Theme.of(this).textTheme.displayMedium;

  ///add the displaySmall to the context.
  TextStyle? get dispSml => Theme.of(this).textTheme.displaySmall;

  ///add the headlineLarge to the context.
  TextStyle? get headMid => Theme.of(this).textTheme.headlineMedium;

  ///add the headlineMedium to the context.
  TextStyle? get bodLarge => Theme.of(this).textTheme.bodyLarge;

  ///add the headlineSmall to the context.
  TextStyle? get bodMid => Theme.of(this).textTheme.bodyMedium;

  ///add the bodyLarge to the context.
  TextStyle? get bodSml => Theme.of(this).textTheme.bodySmall;

  ///add the primaryColor to the context.
  Color? get primaryColor => Theme.of(this).primaryColor;
}

///add the height to the context.
extension MediaQueryExtension on BuildContext {
  ///this extension is responsible for adding the height to the context.
  double get height => mediaQuery.size.height;

  ///this extension is responsible for adding the width to the context.
  double get width => mediaQuery.size.width;

  ///this extension is responsible for adding the top to the context.
  double get top => mediaQuery.viewPadding.top;

  ///this extension is responsible for adding the bottom to the context.
  double get bottom => mediaQuery.viewPadding.bottom;

  ///this extension is realize the keyboard is open or not.
  bool get isKeyboardOpen => mediaQuery.viewInsets.bottom != 0.0;

  ///this extension is realize the full screen or not.
  bool get isFullScreen => top == 0.0 && bottom == 0.0;
}

/* extension DirectionalityExtension on BuildContext {
  bool get isRtl => textDirection == TextDirection.rtl;
}
 */
/* extension ThemeExtension on BuildContext {
  TextTheme get textTheme => theme.textTheme;

  bool get isDarkMode => theme.brightness == Brightness.dark;
} */
///This extension is responsible for adding some functionalities to the BuildContext.
extension FocusExtension on BuildContext {
  ///This extension use for unfocus the keyboard.
  void unfocus() {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
  }
}

/* extension Translation on BuildContext {
  String translator(DetailLocaleModel detailLocaleModel) {
    if (locale == LanguageManager.enLocale) {
      return detailLocaleModel.title!.en;
    } else {
      return detailLocaleModel.title!.tr;
    }
  }
} */

/* extension OverlayExtension on BuildContext {
  Future<T?> dialog<T>({
    required Widget child,
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(14)),
    EdgeInsets margin = const EdgeInsets.symmetric(horizontal: 32),
    EdgeInsets padding = const EdgeInsets.all(24),
    bool avoidKeyboard = true,
  }) {
    return showDialog(
      context: this,
      anchorPoint: anchorPoint,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      routeSettings: routeSettings,
      useRootNavigator: useRootNavigator,
      useSafeArea: useSafeArea,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => barrierDismissible,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: avoidKeyboard
                  ? context.mediaQuery.viewInsets.bottom
                  : context.bottom,
            ),
            child: Padding(
              padding: margin,
              child: Center(
                child: Material(
                  borderRadius: borderRadius,
                  child: Padding(
                    padding: padding,
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<T?> bottomSheet<T>({
    required Widget child,
    Color? backgroundColor = Colors.white,
    double? barrierHeight,
    bool isScrollable = true,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    BorderRadius borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 20),
    EdgeInsets margin = EdgeInsets.zero,
  }) {
    return showModalBottomSheet(
      context: this,
      transitionAnimationController: transitionAnimationController,
      backgroundColor: Colors.transparent,
      clipBehavior: clipBehavior,
      constraints: constraints,
      elevation: elevation,
      shape: shape,
      anchorPoint: anchorPoint,
      barrierColor: barrierColor,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      isScrollControlled: isScrollControlled,
      routeSettings: routeSettings,
      useRootNavigator: useRootNavigator,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
        ),
        margin: margin,
        padding: padding,
        height: barrierHeight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 4.5,
              width: 64,
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
            ),
            if (isScrollable)
              Expanded(
                child: DraggableScrollableSheet(
                  initialChildSize: 1,
                  minChildSize: .96,
                  builder: (_, controller) => SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    controller: controller,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: context.bottom + 10),
                      child: child,
                    ),
                  ),
                ),
              )
            else
              Padding(
                padding: EdgeInsets.only(bottom: context.bottom + 10),
                child: child,
              ),
          ],
        ),
      ),
    );
  }

  void toast(
    String text, {
    Duration duration = const Duration(seconds: 3),
    Duration transitionDuration = const Duration(milliseconds: 150),
  }) {
    final toast = OverlayEntry(
      builder: (_) => CustomToast(
        text: text,
        transitionDuration: transitionDuration,
        duration: duration,
      ),
    );
    overlay.insert(toast);
    Future.delayed(duration, toast.remove);
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(
    SnackBar snackBar,
  ) {
    return ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  ScaffoldFeatureController<MaterialBanner, MaterialBannerClosedReason>
      materialBanner(
    MaterialBanner banner,
  ) {
    return ScaffoldMessenger.of(this).showMaterialBanner(banner);
  }

  Future<T?> showBidBottomSheet<T>({
    required Widget child,
  }) {
    return showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BidBottomSheet(child: child),
    );
  }
} */
