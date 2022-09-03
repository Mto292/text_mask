import 'package:flutter/material.dart';
import 'package:text_mask/text_mask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Mask',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Text Mask'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 26),
            const Center(
              child: Text(
                'Mask TextField ',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [TextMask(pallet: '+90(###) ### ## ##')],
              decoration: const InputDecoration(
                label: Text(
                  'Phone',
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [TextMask(pallet: '#### #### #### ####')],
              decoration: const InputDecoration(
                label: Text(
                  'Credit Card Number',
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [TextMask(pallet: '##/##')],
              decoration: const InputDecoration(
                label: Text(
                  'Expiration Date',
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [TextMask(pallet: '###.###.###.###')],
              decoration: const InputDecoration(
                label: Text(
                  'IP Address',
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [TextMask(pallet: '##/##/####')],
              decoration: const InputDecoration(
                label: Text(
                  'Date',
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [TextMask(pallet: '# # # # # #')],
              decoration: const InputDecoration(
                label: Text(
                  'OTP',
                ),
              ),
            ),
            const SizedBox(height: 26),
            const Center(
              child: Text(
                'Mask Const Text',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Phone: ${TextMask(pallet: '+90(###) ### ## ##').getMaskedText('5451316188')}',
            ),
            const SizedBox(height: 8),
            Text(
              'Credit Card Number: ${TextMask(pallet: '#### #### #### ####').getMaskedText('1234432134567654')}',
            ),
            const SizedBox(height: 8),
            Text(
              'Ip Address: ${TextMask(pallet: '###.###.###.###').getMaskedText('123443213456')}',
            ),
          ],
        ),
      ),
    );
  }
}
