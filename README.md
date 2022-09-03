# text_mask

A package for mask textField and const text (eg. Date, phone number, IP address etc.)

![Simulator Screen Shot - iPhone 13 Pro - 2022-09-04 at 01 18 15](https://user-images.githubusercontent.com/49743631/188289249-3512d8d5-0b5f-44cc-b9be-00c4cd7e009c.png)

## Usage

add this line to pubspec.yaml

```yaml

   dependencies:
     text_mask: ^1.0.0

```

import package

```dart

   import 'package:text_mask/text_mask.dart';

```

## Use # for your char in text you want to mask

```dart
  Text(
   'Phone: ${TextMask(pallet: '+90(###) ### ## ##').getMaskedText('5451312132')}',
  ),
```

## TextField Mask Example

```dart
 TextField(
  keyboardType: TextInputType.phone,
  inputFormatters: [TextMask(pallet: '+90(###) ### ## ##')],
  decoration: const InputDecoration(
   label: Text(
     'Phone',
    ),
   ),
  ),
```
