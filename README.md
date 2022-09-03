# text_mask

A package for mask textField and const text (eg. Date, phone number, IP address etc.)



<img src="https://user-images.githubusercontent.com/49743631/188289249-3512d8d5-0b5f-44cc-b9be-00c4cd7e009c.png" width="250" />


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

## TextField mask example:
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
