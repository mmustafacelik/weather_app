import 'package:flutter/services.dart';

class PhoneFormatter extends TextInputFormatter {
  PhoneFormatter({this.maskType = 2});
  int maskType;

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
      if (maskType == 1) {
        if (newText.length == 1) {
          newText = '($newText';
        } else if (newText.length == 4) {
          newText = '$newText) ';
        } else if (newText.length == 9 && newValue.selection.isCollapsed) {
          newText = '$newText ';
        } else if (newText.length >= 14) {
          newText = newText.substring(0, 14);
        }
      } else if (maskType == 2) {
        if (newText.length == 1) {
          newText = '($newText';
        } else if (newText.length == 4) {
          newText = '$newText) ';
        } else if (newText.length == 9 && newValue.selection.isCollapsed) {
          newText = '$newText ';
        } else if (newText.length == 12 && newValue.selection.isCollapsed) {
          newText = '$newText ';
        } else if (newText.length >= 15) {
          newText = newText.substring(0, 15);
        }
      } else if (maskType == 3) {
        if (newText.length == 2) {
          newText = '($newText) ';
        } else if (newText.length == 8) {
          newText = '$newText ';
        } else if (newText.length >= 12 && newValue.selection.isCollapsed) {
          newText = newText.substring(0, 12);
        }
      }

      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
  }
}
