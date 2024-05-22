import "package:flutter/material.dart";

import "package:weather_app/utils/extensions.dart";
import "package:weather_app/utils/themes.dart";

//TODO !! Bekleme süresini değiştir
/// CustomSnackBar, custom snackbar
class CustomSnackBar {
  static void show(
    final BuildContext context, {
    final String text = "Deneme",
    final int second = 1,
    final int status =
        0, //Status 0 ise başarılı 1 ise hatalı 2 ise bilgilendirme (turuncu olan)
  }) {
    final OverlayState overlayState = Overlay.of(context);
    bool isDismissed = true;
    OverlayEntry? overlayEntry;
    AnimationController animationController;
    Animation<double> animation;

    animationController = AnimationController(
      vsync: overlayState,
      duration: Duration(seconds: second), // Animasyon süresi
    );

    final Tween<double> tween = Tween<double>(begin: -1, end: 0);

    animation = tween.animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );
    overlayEntry = OverlayEntry(
      builder: (final BuildContext context) => AnimatedBuilder(
        animation: animation,
        builder: (final BuildContext context, final Widget? child) =>
            Positioned(
          top: animation.value *
              (MediaQuery.of(context).padding.top + kToolbarHeight),
          left: 0,
          right: 0,
          child: Dismissible(
            direction: DismissDirection.vertical,
            onDismissed: (final DismissDirection direction) {
              overlayEntry?.remove();
              overlayEntry?.dispose();
            },
            onUpdate: (final DismissUpdateDetails details) {
              if (isDismissed) {
                animationController
                  ..stop()
                  ..dispose();
                isDismissed = false;
              }
            },
            key: UniqueKey(),
            child: Material(
              color: Colors.transparent,
              child: SafeArea(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        12,
                      ),
                    ),
                    color: status == 0
                        ? context.theme.colorScheme.secondary
                        : status == 1
                            ? context.theme.colorScheme.error
                            : context.theme.colorScheme.tertiary,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        status == 0
                            ? Icons.check_circle_outline
                            : status == 1
                                ? Icons.error_outline
                                : Icons.info_outline,
                        color: CustomTheme.primary,
                      ),
                      const SizedBox(width: 18),
                      Expanded(
                        child: Text(
                          text,
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: CustomTheme.primary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    // Overlay Entry'nin eklenmesi
    overlayState.insert(overlayEntry);

    // Animasyonun başlatılması
    if (isDismissed) {
      animationController.forward();
    }

    // Overlay Entry'nin 1 saniye sonra silinmesi

    Future.delayed(
      Duration(seconds: second + 1),
      () async {
        if (isDismissed) {
          await animationController.reverse().whenComplete(() {
            animationController.dispose();
          });
          overlayEntry?.remove();
        }
      },
    );
  }
}
