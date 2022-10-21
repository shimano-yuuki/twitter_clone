import 'package:flutter/material.dart';
import 'dart:math' as math;

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
        title: Container(
          height: 35,
          width: 1000,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const TextField(
            enabled: true,
            // 入力数
            maxLength: 10,
            style: TextStyle(color: Colors.red),
            obscureText: false,
            maxLines: 1,
            //パスワード
          ),
        ),
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 16,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 80,
            width: 1000,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Text(
                            "${index + 1}.トレンド",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: const Text(
                            "トレンドオオオオオオオオ",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Text(
                            "${math.Random().nextInt(40) + 1},${math.Random().nextInt(899) + 100}件のツイート",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 60,
                  child: IconButton(
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.black12,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
