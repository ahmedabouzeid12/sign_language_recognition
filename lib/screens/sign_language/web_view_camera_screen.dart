import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewCamera extends StatelessWidget {
  const WebViewCamera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
            onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      body:  WebView(
        initialUrl: "https://9d3c495cc0a2e6f4.gradio.app/",
      ),
    );
  }
}