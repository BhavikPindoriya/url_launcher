import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlTest extends StatelessWidget {
  const UrlTest({super.key});

  Future<void> openappwebView(String url) async {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not lanch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                openappwebView('https://pub.dev/packages/url_launcher');
              },
              child: Text('App Web View'))
        ],
      ),
    );
  }
}
