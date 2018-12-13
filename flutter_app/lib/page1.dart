import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//class Page1 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Center(
//      child: new RaisedButton(
//        onPressed: () {Navigator.of(context).pushNamed('/location');},
//        child: new Text("Page1"),
//        ),
//    );
//  }
//}

class Page1 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _Page1();
  }

}

class _Page1 extends State<Page1> {
  static const platform = const MethodChannel('app.channel.shared.data');
  String dataShared = "No data";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSharedText();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(body: new Center(
      child: RaisedButton(
        onPressed: () {showToast();},
        child: new Text(dataShared),
      ),),
    );
  }

  getSharedText() async {
    var sharedData = await platform.invokeMethod("getSharedText");
    if(sharedData != null) {
      setState(() {
        dataShared = sharedData;
      });
    }
  }

  showToast() async{
    await platform.invokeMethod("showToast");
  }

}

