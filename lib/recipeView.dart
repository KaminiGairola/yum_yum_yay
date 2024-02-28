import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class recipeView extends StatefulWidget {

  String? url;
  recipeView(this.url);


  @override
  State<recipeView> createState() => _recipeViewState();
}

class _recipeViewState extends State<recipeView> {
  String? finalUrl;

  //final Completer<WebViewController> controllers = Completer<WebViewController>();

  @override
  void initState() {
    // TODO: implement initState
    if(widget.url.toString().contains("https://"))
      {
        finalUrl = widget.url.toString().replaceAll("http://", "https://");
      }
    else{
      finalUrl = widget.url;
    }
    super.initState();
  }
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter food recipe app"),
      ),
      body: Container(
        child: WebView(
          initialUrl: finalUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController){
          controller = webViewController;
          },
        ),
      )
    );
  }
}
