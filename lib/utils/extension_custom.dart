part of 'extensions.dart';

/// await 2.s.wait();
/// await Future.delayed(const Duration(seconds:2));
extension Wait on Duration {
  // ignore: unnecessary_await_in_return
  Future<void> wait() async => await Future.delayed(this);
}

extension SnackBarExtension on ScaffoldMessengerState {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(
    SnackBar snackBar,
  ) =>
      showSnackBar(snackBar);
}

extension ToastExtension on OverlayState {
  void toast(
    String text, {
    Duration duration = const Duration(seconds: 3),
    Duration transitionDuration = const Duration(milliseconds: 250),
  }) {
    final OverlayEntry toast = OverlayEntry(
      builder: (_) => CustomToast(
        text: text,
        transitionDuration: transitionDuration,
        duration: duration,
      ),
    );
    insert(toast);
    Future.delayed(duration, toast.remove);
  }
}

extension FormExtension on FormState {
  bool saveAndValidate() {
    save();
    return validate();
  }
}

/// await 2.s.wait();
extension StrinkExt on String {
  String removeSpaces() => replaceAll(' ', '');

  bool isValidEmail() => RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
      ).hasMatch(this);

  String formatToPhone() => replaceAll(RegExp(r'[\(\)\s]'), '');

  String becomeToPhoneFormat() {
    if (length == 10) {
      return '(${substring(0, 3)}) ${substring(3, 6)} ${substring(6, 8)} ${substring(8)}';
    } else if (length == 9) {
      return '(${substring(0, 2)}) ${substring(2, 5)} ${substring(5, 8)}';
    } else if (length == 11) {
      return '(${substring(0, 3)}) ${substring(3, 6)}  ${substring(6, 10)}';
    } else {
      return '';
    }
  }
}
