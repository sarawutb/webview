import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'web_view_container.dart';

class Home extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
      final _links = 'http://assmartfarm.cs.ubru.ac.th/water_project/';

    // return Container(
    //     padding: EdgeInsets.all(20.0),
    //     child: FlatButton(
    //       color: Theme.of(context).primaryColor,
    //       padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
    //       child: Text(_links),
    //       onPressed: () => _handleURLButtonPress(context, _links),
    //     ));
    // return Scaffold(
    //   body: WebView(
    //     initialUrl: _links,
    //     javascriptMode: JavascriptMode.unrestricted,
    //     zoomEnabled: false,
    //   ),
    // );
    return new SafeArea(
      child: WebView(
         initialUrl: _links,
         javascriptMode: JavascriptMode.unrestricted,
         zoomEnabled: false,
       ),
      );
    

    // return WebView(
    //    initialUrl: _links,
    //    javascriptMode: JavascriptMode.unrestricted,
    //    zoomEnabled: false,
    //  );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}