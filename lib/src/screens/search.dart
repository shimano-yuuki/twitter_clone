import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お知らせ'),
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            child: Text("テスト${index}"),
            height: 50,
            width: 1000,
          );
        },
      ),
    );
  }
}
