import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class BuyNowRow extends StatelessWidget {
  const BuyNowRow({
    super.key,
    required this.onBuyButtonTap,
    required this.url,
  });

  final VoidCallback onBuyButtonTap;
  final String url;

  Future<void> openExternalLink() async {
    final uri = Uri.parse(url);

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication, // 👈 opens system browser
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDefaults.padding,
      ),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () => openExternalLink(),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(AppDefaults.padding * 1.2),
              ),
              child: const Text('Check out more questions for this certification'),
            ),
          ),
        ],
      ),
    );
  }
}
