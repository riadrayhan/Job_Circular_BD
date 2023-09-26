import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ApplyPage extends StatefulWidget {
  const ApplyPage({super.key});

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            routes: {
              "/": (_) => new WebviewScaffold(
                url: "https://alljobs.teletalk.com.bd/bn/",
                //http://localhost/login-b-13-master/index.php
              ),
            },
          );
          // Divider(color: Colors.deepPurple),
          // MaterialApp(
          //   routes: {
          //     "/": (_) => new WebviewScaffold(
          //       url: "https://alljobs.teletalk.com.bd/bn/",
          //       //http://localhost/login-b-13-master/index.php
          //     ),
          //   },
          // ),

  }
}
