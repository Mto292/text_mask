library text_mask;

import 'package:flutter/services.dart' show TextInputFormatter, TextEditingValue, TextSelection;


/// Use # for your char in text you want to mask
///
/// TextField mask example:
///  TextField(
///    keyboardType: TextInputType.phone,
///    inputFormatters: [TextMask(pallet: '(###) ### ## ##')],
///    decoration: const InputDecoration(
///     label: Text(
///      'Phone',
///    ),
///   ),
///  ),
///
///
/// Const text mask example:
///  Text(
///   'Phone: ${TextMask(pallet: '(###) ### ## ##').getMaskedText('5451316188')}',
///  ),
class TextMask extends TextInputFormatter {
  final String pallet;

  TextMask({
    required this.pallet,
  });

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String newTxt = newValue.text;
    String oldText = oldValue.text;
    newTxt = getMaskedText(newTxt, oldText: oldText);
    return TextEditingValue(
      text: newTxt,
      selection: TextSelection.collapsed(offset: newTxt.length),
    );
  }

  /// Use this for const text mask
  String getMaskedText(String newTxt, {String oldText = ''}) {
    List<Map<int, String>> list = [];
    int tempIndex = -2;
    int charAddedLength = 0;
    for (int i = 0; i < pallet.length; i++) {
      if (pallet[i] != '#') {
        if (tempIndex == i - 1) {
          list.last = {list.last.keys.first: list.last.values.first + pallet[i]};
        } else {
          list.add({i - charAddedLength: pallet[i]});
        }
        tempIndex = i;
        charAddedLength++;
      }
    }
    tempIndex =
        list.indexWhere((element) => (oldText.endsWith(element.values.first) || newTxt.endsWith(element.values.first)));
    if (tempIndex != -1 && (oldText.length > newTxt.length)) {
      newTxt = newTxt.substring(0, newTxt.length - list[tempIndex].values.first.length);
    } else {
      String result = '';
      for (Map<int, String> element in list) {
        newTxt = newTxt.replaceAll(element.values.first, '');
      }
      for (int i = 0; i < newTxt.length; i++) {
        final conIndex = list.indexWhere((element) => element.keys.first == i);
        if (conIndex != -1) {
          result = result + list[conIndex].values.first + newTxt[i];
        } else {
          result = result + newTxt[i];
        }
      }
      newTxt = result;
    }
    return newTxt;
  }
}
