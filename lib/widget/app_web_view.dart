import 'dart:io';
import 'package:flutter/material.dart';
import 'package:finployee/widget/loader.dart';
import 'package:finployee/widget/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebView extends StatefulWidget {
  final String url;
  const AppWebView({
    super.key,
    required this.url,
  });

  @override
  State<AppWebView> createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  bool showLoder = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars.backAppBar(context, title: ""),
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: ((url) {
                if (mounted) {
                  setState(() => showLoder = false);
                }
              }),
            ),
            if (showLoder) const AppLoader()
          ],
        ),
      ),
    );
  }
}
