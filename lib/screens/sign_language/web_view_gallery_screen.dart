import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewGallery extends StatelessWidget {
  const WebViewGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      body:  WebView(
        initialUrl: "https://b07c453a1a0cff28.gradio.app/",
      ),
    );
  }
}
