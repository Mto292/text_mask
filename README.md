# text_mask

A package for mask textField and const text (eg. Date, phone number, IP address etc.)

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
   'Phone: ${TextMask(pallet: '+90(###) ### ## ##').getMaskedText('5451316188')}',
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
