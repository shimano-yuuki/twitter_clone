import 'dart:math' as math;

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return DefaultTabController(
      initialIndex: 0, // 最初に表示するタブ
      length: 5, // タブの
      // 数
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 60),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(27),
                      child: Image.network(
                        'https://user-images.githubusercontent.com/17683316/198200410-a462b14a-bbde-468d-9801-be90c718290e.jpg',
                        fit: BoxFit.fill,
                        width: 54,
                        height: 54,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'yuuki',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  '@kurokawauso02',
                  style: TextStyle(fontSize: 18),
                ),
                Container(height: 10),
                Row(
                  children: [
                    Text('16フォロー'),
                    Container(
                      width: 10,
                    ),
                    Text('14フォローワー')
                  ],
                ),
                Container(height: 18),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'プロフィール',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.comment),
                  title: Text(
                    'トピック',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.bookmark),
                  title: Text(
                    'ブックマーク',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person_add_alt_1),
                  title: Text(
                    'Twiiterサークル',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                Container(height: 22),
                Container(
                  height: 0.25,
                  width: 250,
                  color: Colors.grey,
                ),
                Container(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 4,
                    ),
                    Text(
                      'Creator Studio',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                    ),
                    Container(
                      width: 74,
                    ),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
                Container(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 4,
                    ),
                    Text(
                      'プロフェッショナル...',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    ),
                    Container(
                      width: 16,
                    ),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
                Container(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 4,
                    ),
                    Text(
                      '設定とサポート',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                    ),
                    Container(
                      width: 75,
                    ),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
                Container(height: 35),
                Row(children: [
                  Icon(Icons.wb_sunny_outlined),
                  Container(width: 215),
                  Icon(Icons.qr_code)
                ]),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: InkWell(
            onTap: () {
              setState(() {});
            },
            child: Container(
              height: 35,
              width: 1000,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 35,
                      width: 35,
                      child: const Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 29,
                      width: 120,
                      child: const Text(
                        "キーワード検索",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          leading: IconButton(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(27),
              child: Image.network(
                'https://user-images.githubusercontent.com/17683316/198200410-a462b14a-bbde-468d-9801-be90c718290e.jpg',
                fit: BoxFit.fill,
                width: 54,
                height: 54,
              ),
            ),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
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
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.blue,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "おすすめ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "トレンド",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "ニュース",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "スポーツ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "エンターテイメント",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                var random = math.Random();
                int a = random.nextInt(2);
                if (index == 0) {
                  return SizedBox(
                    height: 230,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          color: Colors.black,
                        ),
                        Container(
                          height: 10,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  );
                  Container();
                }
                if (a == 0) {
                  return SizedBox(
                    height: 95,
                    width: 1000,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 26,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              const Expanded(
                                flex: 2,
                                child: Text(
                                  "トレンド",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 2,
                                child: Text(
                                  "トレンドオオオオオオオオ",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(right: 15),
                                height: 75,
                                width: 75,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  );
                }

                return SizedBox(
                  height: 80,
                  width: 1000,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 27,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "トレンド",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "トレンドオオオオオオオオ",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
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
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 80,
                  width: 1000,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 27,
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
            Container(
              child: Text("3"),
            ),
            Container(
              child: Text("4"),
            ),
            Container(
              child: Text("5"),
            ),
          ],
        ),
      ),
    );
  }
}
