import 'package:flutter/services.dart';

class PaymentCodeFormatter extends TextInputFormatter {
  PaymentCodeFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var newText = newValue.text;
    if (oldValue.text.length > newValue.text.length) {
      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    } else {
      if (newText.length == 4) {
        newText = '$newText   ';
      }

      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
  }
}
