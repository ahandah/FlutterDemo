import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home:

        new Scaffold(
          appBar: new AppBar(
            title: new Text("this is titile"),
          ),
          body:

//            new ListView(
//              children: <Widget>[
//                new Row(
//                  children: <Widget>[
//                    new Container(
//                      decoration: new BoxDecoration(
//                        border: new Border(
//                          right: new BorderSide(color: Colors.red, width: 5)
//                        )
//                      ),
//                      child: new Text("eeeee"),
//                    ),
//                    new Text('123'),
//                    new Text('123'),
//                  ],
//                )
//              ],
//            ),


//            new Column(
//              children: <Widget>[
//
//              ],
//            ),

//            new SingleChildScrollView(
//              child:
//              new Column(
//                children: <Widget>[
//                  new Row(
//                    children: <Widget>[
//                      new Expanded(child: new Text("1231"),),
//
//                      SizedBox(
//                        width: 10,
////                        height: 100,
//                        child: Center(
//                          child: Container(
//                            width: 0.0,
////                            height: 100,
//                            margin: EdgeInsetsDirectional.only(start: 0),
//                            decoration: BoxDecoration(
//                              border: Border(
//                                left: Divider.createBorderSide(context, color: Colors.red),
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                      new Expanded(child: new Text("1231"),),
//                    ],
//                  )
//                ],
//              ),
//            )

            new SingleChildScrollView(
              child: new Column(
                children: <Widget>[

                  new Container(
                    height: 100.0,
                    child: new AspectRatio(
                      aspectRatio: 2,
                      child: new Container(
                        color: Colors.red,
                      ),
                    ),
                  ),

                  getRowContext(),
                  getRowContext(),
                  getRowContext(),
                  getRowContext(),
                  getRowContext(),
                  getRowContext(),
                  getRowContext(),
                  getRowContext(),
                  getRowContext(),
                  getRowContext(),
                ],
              ),
            )

//            new ListView.builder(
//              itemCount: 10,
//              itemBuilder: (BuildContext context, int i) {
//                if(i == 1) {
//                  return new Row(
//                    children: <Widget>[
//                      new Container(
//                        margin: new EdgeInsets.fromLTRB(20, 20, 20, 20),
//                        child: new Image(image: AssetImage("images/icon_logo_about.jpg"), height: 100),
//                      ),
//
//                      new Expanded(
//
//                          child:
//                          new Column(
////                        mainAxisAlignment: MainAxisAlignment.end,
////                        crossAxisAlignment: CrossAxisAlignment.stretch,
////                        verticalDirection: VerticalDirection.down,
////                        mainAxisSize: MainAxisSize.max,
//                            children: <Widget>[
////                          new Expanded(
////                            flex: 1,
////                            child: new Text("test expanded"),
////                          ),
////                          new Container(
////                            constraints: new BoxConstraints(maxWidth: 500, maxHeight: 500),
////                            child: new Text("data"),
////                          ),
////                          new Row(
////                            children: <Widget>[new Text("row")],
////                          ),
////                          new Expanded(
////                            child: new Container(
////                              child: new Text("ssss"),
////                            ),
////                          ),
////                          new Row(
////                            children: <Widget>[
////                              new Container(
////                                child: new Expanded(
////                                  child: new Text("ssss"),
////                                ),
////                              )
////                            ],
////                          ),
////                              new Row(
////                                children: <Widget>[
////                                  new Container(child: new Expanded(child: null))
////                                ],
////                              ),
//                              new Text("name: 1111"),
//                              new Text("age: 12"),
//                              new Text("price: 211")
//                            ],
//                          )
//
//                      )
//
//                    ],
//                  );
//                }
//                return new Text("data $i");
//              }
//            )


        )

//      new Center(
//        child: new Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            new Image.asset('images/icon_logo_about.jpg'),
//            new Image.asset('images/empty_icon.png'),
//            new Image.asset('images/icon_logo_about.jpg'),
//          ],),)

    );
  }


  Widget getRowContext() {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        new Expanded(
          child:
            new Container(
              padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
              decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(color: Colors.red, width: 1)
                ),
              ),
              child: new Image(image: AssetImage("images/icon_logo_about.jpg"), height: 100),
            ),
        ),

        new Expanded(
          flex: 2,
          child:
            new Container(
              decoration: new BoxDecoration(
//                color: Colors.blue,
                borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                border: new Border.all(width: 2.0, color: Colors.red),
              ),
              margin: new EdgeInsets.only(top: 10),
//              constraints: BoxConstraints.expand(),
              child: new Text("sdsdsd"),
            )
        ),


      ],
    );
  }
}


