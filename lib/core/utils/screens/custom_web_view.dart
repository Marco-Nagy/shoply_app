import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS/macOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
class CustomWebView extends StatefulWidget {
  const CustomWebView({super.key, required this.url});
final String url;
  @override
  State<CustomWebView> createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  late final WebViewController _controller;
  bool isLoading = true;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageFinished: (String url) {

            setState(() {
              isLoading = false;
            });  // Trigger UI update.
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    if (_controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);

      (_controller.platform as AndroidWebViewController).setMediaPlaybackRequiresUserGesture(false);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
        ],
      ),
    );
  }
}
