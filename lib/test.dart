import 'package:flutter/material.dart' ;

class WebToApp extends StatefulWidget {
  const WebToApp({super.key});
  @override
  State<WebToApp> createState() => _WebtoAppState();
}

class _WebtoAppState extends State<WebToApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebView(
        initialUrl: "https://studio--rupee-counter-n9gqn.us-central1.hosted.app",
        javascriptMode: JavascriptMode.unrestricted,

      ),
    );
  }
}