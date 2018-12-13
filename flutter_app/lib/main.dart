import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:flutter_app/MyProject/index.dart';
import 'package:flutter_app/layout/home_page.dart';
//import 'package:http/http.dart' as http;
import 'package:flutter_app/fade_animation_demo.dart';
import 'package:flutter_app/main2.dart';
import 'package:flutter_app/page1.dart';
import 'package:flutter_app/page2.dart';
import 'package:flutter_app/page3.dart';
import 'package:flutter_app/signature_painter.dart';

import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true;
  runApp(new HomePage());
}


//void main() => runApp(new MyApp());

//void main() {
//  runApp(new MaterialApp(
//    home: new Page1(),
//    routes: <String, WidgetBuilder> {
//      '/page1': (BuildContext context) => new Page1(),
//      '/page2': (BuildContext context) => new Page2(),
//      '/page3': (BuildContext context) => new Page3(),
//    },
//  ));
//}

//void main() => runApp(new MaterialApp(
//  home: new MyIndex(),
//));
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
////      title: 'Welcome to Flutter',
//      home: new RandomWords(),
//    );
//  }
//}
//
//class RandomWords extends StatefulWidget {
//  @override
//  createState() => new RandomWordsState();
//}
//
//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//  final _saved = new Set<WordPair>();
//  final _biggerFont = const TextStyle(fontSize: 18.0);
//
//
//  @override
//  void initState() {
//    _loadData();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
////    final wordPair = new WordPair.random();
////    return new Text(wordPair.asPascalCase);
//    return
//      new Scaffold(
//        body:
//          new Center(
//            child: new CircularProgressIndicator(),
//          ),
//      );
//
//
////    new Scaffold(
////      appBar: new AppBar(
////        title: new Text('Startup Name Generator'),
////        actions: <Widget>[
////          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
////        ],
////      ),
////      body: _buildSuggestions(),
////    );
//  }
//
//  void _pushSaved() {
//    Navigator.of(context).push(
//      new MaterialPageRoute(
//        builder: (context) {
//          final tiles = _saved.map(
//              (pair) {
//                return new ListTile(
//                  title: new Text(
//                    pair.asPascalCase,
//                    style: _biggerFont,
//                  ),
//                );
//              },
//          );
//
//          final divided = ListTile
//              .divideTiles(
//                context: context,
//                tiles: tiles,
//              )
//              .toList();
//
//          return new Scaffold(
//            appBar: new AppBar(
//              title: new Text('Saved Suggestions'),
//            ),
//            body: new ListView(children: divided,),
//          );
//
//        },
//      ),
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//
//        itemBuilder: (context, i) {
//          if(i.isOdd) return new Divider();
//          final index = i ~/ 2;
//          if(index >= _suggestions.length) {
//            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_suggestions[index]);
////          return new Text("123123123");
//        }
//    );
//  }
//
//  Widget _buildRow(WordPair pair) {
//    final alreadySaved = _saved.contains(pair);
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(
//        alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,
//      ),
//      onTap: () {
//        setState(() {
//          if(alreadySaved) {
//            _saved.remove(pair);
//          } else {
//            _saved.add(pair);
//          }
//        });
//      },
//    );
//  }
//
//  void _loadData() async {
//    String dataURL = "https://jsonplaceholder.typicode.com/posts";
//    http.Response response = await http.get(dataURL);
//    print("response  --------------------- ");
//    print(response.body);
//  }
//
//}

