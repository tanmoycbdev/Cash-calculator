import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebToApp extends StatefulWidget {
  const WebToApp({super.key});
  @override
  State<WebToApp> createState() => _WebtoAppState();
}

class _WebtoAppState extends State<WebToApp> {
  bool _isLoading = true;
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cash calculator",
        style: TextStyle(
        fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white70, // You can change this color
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: "",
            javascriptMode: JavascriptMode.unrestricted,
            onPageStarted: (url) {
              setState(() {
                _isLoading = true;
              });
            },
            onPageFinished: (url) {
              setState(() {
                _isLoading = false;
              });
            },
            onWebViewCreated: (controller) {
              _controller = controller;
            },
          ),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
