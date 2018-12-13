import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {

}

class FadeAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Fade Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new MyFadeTest(title: 'Fade Demo'),
    );
  }
}

class MyFadeTest extends StatefulWidget {

  MyFadeTest({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyFadeTest createState() {
    // TODO: implement createState
    return new _MyFadeTest();
  }
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
  AnimationController animationController;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    animationController = new AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    curvedAnimation = new CurvedAnimation(parent: animationController, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Container(
          child: new FadeTransition(
            opacity: curvedAnimation,
            child: new FlutterLogo(
              size: 100.0,
            ),),),),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Fade',
        child: new Icon(Icons.brush),
        onPressed: () {
          animationController.forward();
//          animationController.;
        }
      ),
    );
  }

}