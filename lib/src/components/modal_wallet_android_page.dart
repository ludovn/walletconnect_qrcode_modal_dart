import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ModalWalletAndroidPage extends StatelessWidget {
  const ModalWalletAndroidPage({
    required this.uri,
    Key? key,
  }) : super(key: key);

  final String uri;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
                'Touch on Connect button and choose the wallet application you want to use',
                textAlign: TextAlign.center),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => launchUrl(Uri.parse(uri)),
              child: const Text('Connect'),
            ),
          ],
        ),
      ),
    );
  }
}
