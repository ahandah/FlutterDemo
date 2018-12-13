import 'package:flutter/material.dart';

void main() {
//  runApp(new SampleApp());
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SampleAppPage(),
    );
  }
}
class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => new _SampleAppPageState();
}
class _SampleAppPageState extends State<SampleAppPage> {
  // Default value for toggle
  bool toggle = true;
  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
//      return new Text('Toggle One');
      return null;
    } else {
      return new MaterialButton(onPressed: () {}, child: new Text('Toggle Two'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: new Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: new Icon(Icons.update),
      ),
    );
  }
}

//-------------------------------------------------------------------------------------

//class SampleApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Sample App',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: new SampleAppPage(),
//    );
//  }
//}
//
//class SampleAppPage extends StatefulWidget {
//  SampleAppPage({Key key}) : super(key: key);
//
//  @override
//  _SampleAppPageState createState() => new _SampleAppPageState();
//}
//
//class _SampleAppPageState extends State<SampleAppPage> {
//  // Default placeholder text
//  String textToShow = "I Like Flutter";
//
//  void _updateText() {
//    setState(() {
//      // update the text
//      textToShow = "Flutter is Awesome!";
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Sample App"),
//      ),
//      body: new Center(child: new Text(textToShow)),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _updateText,
//        tooltip: 'Update Text',
//        child: new Icon(Icons.update),
//      ),
//    );
//  }
//}