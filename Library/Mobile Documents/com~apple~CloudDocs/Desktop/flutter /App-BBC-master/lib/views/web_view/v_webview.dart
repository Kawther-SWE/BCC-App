import 'package:bbc/widgets/w_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebView extends StatefulWidget {
  const ViewWebView({super.key, required this.url});
  final String url;
  @override
  State<ViewWebView> createState() => _ViewWebViewState();
}

class _ViewWebViewState extends State<ViewWebView> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  void dispose() {
    super.dispose();
    controller.clearCache();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(),
      body: WebViewWidget(controller: controller),
    );
  }
}
