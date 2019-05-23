import 'package:flutter/material.dart';
import 'package:boring_show/src/article.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await new Future.delayed(const Duration(seconds: 1));
          _articles.removeAt(0);
        },
        child: new ListView(
          children: _articles.map(_buildItem).toList(),
        ),
      ),
    );
  }

  Widget _buildItem(Article article) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new ExpansionTile(
        //article.text,
        //style: new TextStyle(fontSize: 35),
        title: new Text(article.text),
        children: <Widget>[
          new Text("${article.commentsCount} comments"),
          new IconButton(
            icon: new Icon(Icons.launch),
            color: Colors.green,
            onPressed: () async {
              final fakeUrl = "http://${article.domain}";
              if (await canLaunch(fakeUrl)) {
                launch(fakeUrl);
              }
            },
          )
        ],
      ),
    );
  }
}
