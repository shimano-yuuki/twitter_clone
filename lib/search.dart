import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<SearchPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 35,
            width: 1000,
          ),
          //(3) グレーの背景の四角を表示
          Container(
              height: 55,
              width: 1000,
              color: Colors.white,
              //(4) ここからRowスタート
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        )),
                    Container(
                      height: 35,
                      width: 260,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.settings,
                      ),
                    )
                  ])),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
          Container(
            child: Text("テスト"),
            height: 100,
            width: 1000,
          ),
        ]), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
