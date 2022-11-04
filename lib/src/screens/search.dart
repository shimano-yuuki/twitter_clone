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
    return DefaultTabController(
      initialIndex: 0, // 最初に表示するタブ
      length: 5, // タブの
      // 数
      child: Scaffold(
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
                int randomint = random.nextInt(2);
                final listItems = [
                  "ニュース",
                  "スポーツ",
                  "エンターテイメント",
                ];

                if (index == 0) {
                  return SizedBox(
                    height: 231,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 500,
                          color: Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(flex: 4, child: Container()),
                              Container(
                                margin: EdgeInsets.only(left: 20, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        listItems[math.Random().nextInt(3)],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "・ライブ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, bottom: 15),
                                child: Text(
                                  "色々ある",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.black26,
                        )
                      ],
                    ),
                  );
                  Container();
                }
                if (randomint == 0) {
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
                  height: 70,
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
                var random = math.Random();
                int randomint = random.nextInt(3);

                if (index == 0) {
                  return SizedBox(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          padding: const EdgeInsets.only(
                            top: 11,
                            bottom: 15,
                            left: 18,
                          ),
                          child: const Text(
                            "日本のトレンド",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );
                }

                if (randomint == 1) {
                  return SizedBox(
                    height: 190,
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
                                flex: 5,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      //flex: 20,
                                      child: Text(
                                        "$index.トレンド",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                              ),
                              const Expanded(
                                flex: 5,
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
                                flex: 25,
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 1, bottom: 4, right: 30),
                                    width: 500,
                                    child: Container(
                                      padding: const EdgeInsets.all(1.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black12, width: 0.5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              children: [
                                                Container(
                                                    child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12, right: 4),
                                                  width: 17,
                                                  height: 17,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.black45,
                                                    shape: BoxShape.circle,
                                                  ),
                                                )),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 4),
                                                    child: const Text(
                                                      "アカウント名前",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )),
                                                Container(
                                                    child: const Text(
                                                  "@accountname",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                )),
                                                Text(
                                                  "・${math.Random().nextInt(11) + 1}時間",
                                                  style: const TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  //color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container()),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 10),
                                                            height: 60,
                                                            width: 60,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black26,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                            )),
                                                      ],
                                                    ),
                                                    Expanded(
                                                      flex: 20,
                                                      child: Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8,
                                                                ),
                                                                child: Text(
                                                                  "なんか描いてる場所",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8,
                                                                  bottom: 30,
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .more_horiz,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Container(),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 5,
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
                      ],
                    ),
                  );
                }
                return SizedBox(
                  height: 70,
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
                              flex: 3,
                              child: Container(
                                child: Text(
                                  "${index}.トレンド",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
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
                              flex: 3,
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
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                var random = math.Random();
                int randomint = random.nextInt(10);
                if (index == 0) {
                  return SizedBox(
                    height: 231,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 500,
                          color: Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(flex: 4, child: Container()),
                              Container(
                                margin: EdgeInsets.only(left: 20, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "ニュース",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "・ライブ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, bottom: 15),
                                child: Text(
                                  "色々ある",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.black26,
                        )
                      ],
                    ),
                  );
                  Container();
                }

                if (randomint == 0 ||
                    randomint == 1 ||
                    randomint == 2 ||
                    randomint == 3 ||
                    randomint == 4) {
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

                if (randomint == 5) {
                  return SizedBox(
                    height: 190,
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
                                flex: 5,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      //flex: 20,
                                      child: Text(
                                        "$index.トレンド",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                              ),
                              const Expanded(
                                flex: 5,
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
                                flex: 25,
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 1, bottom: 4, right: 30),
                                    width: 500,
                                    child: Container(
                                      padding: const EdgeInsets.all(1.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black12, width: 0.5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              children: [
                                                Container(
                                                    child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12, right: 4),
                                                  width: 17,
                                                  height: 17,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.black45,
                                                    shape: BoxShape.circle,
                                                  ),
                                                )),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 4),
                                                    child: const Text(
                                                      "アカウント名前",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )),
                                                Container(
                                                    child: const Text(
                                                  "@accountname",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                )),
                                                Text(
                                                  "・${math.Random().nextInt(11) + 1}時間",
                                                  style: const TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  //color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container()),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 10),
                                                            height: 60,
                                                            width: 60,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black26,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                            )),
                                                      ],
                                                    ),
                                                    Expanded(
                                                      flex: 20,
                                                      child: Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8,
                                                                ),
                                                                child: Text(
                                                                  "なんか描いてる場所",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8,
                                                                  bottom: 30,
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .more_horiz,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Container(),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 5,
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
                      ],
                    ),
                  );
                }
                return SizedBox(
                  height: 70,
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
                              flex: 3,
                              child: Container(
                                child: Text(
                                  "${index}.トレンド",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
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
                              flex: 3,
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
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                var random = math.Random();
                int randomint = random.nextInt(10);
                if (index == 0) {
                  return SizedBox(
                    height: 231,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 500,
                          color: Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(flex: 4, child: Container()),
                              Container(
                                margin: EdgeInsets.only(left: 20, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "スポーツ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "・ライブ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, bottom: 15),
                                child: Text(
                                  "色々ある",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.black26,
                        )
                      ],
                    ),
                  );
                  Container();
                }

                if (randomint == 0 ||
                    randomint == 1 ||
                    randomint == 2 ||
                    randomint == 3 ||
                    randomint == 4) {
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

                if (randomint == 5) {
                  return SizedBox(
                    height: 190,
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
                                flex: 5,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      //flex: 20,
                                      child: Text(
                                        "$index.トレンド",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                              ),
                              const Expanded(
                                flex: 5,
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
                                flex: 25,
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 1, bottom: 4, right: 30),
                                    width: 500,
                                    child: Container(
                                      padding: const EdgeInsets.all(1.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black12, width: 0.5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              children: [
                                                Container(
                                                    child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12, right: 4),
                                                  width: 17,
                                                  height: 17,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.black45,
                                                    shape: BoxShape.circle,
                                                  ),
                                                )),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 4),
                                                    child: const Text(
                                                      "アカウント名前",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )),
                                                Container(
                                                    child: const Text(
                                                  "@accountname",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                )),
                                                Text(
                                                  "・${math.Random().nextInt(11) + 1}時間",
                                                  style: const TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  //color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container()),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 10),
                                                            height: 60,
                                                            width: 60,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black26,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                            )),
                                                      ],
                                                    ),
                                                    Expanded(
                                                      flex: 20,
                                                      child: Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8,
                                                                ),
                                                                child: Text(
                                                                  "なんか描いてる場所",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8,
                                                                  bottom: 30,
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .more_horiz,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Container(),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 5,
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
                      ],
                    ),
                  );
                }
                return SizedBox(
                  height: 70,
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
                              flex: 3,
                              child: Container(
                                child: Text(
                                  "${index}.トレンド",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
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
                              flex: 3,
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
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                var random = math.Random();
                int randomint = random.nextInt(10);
                if (index == 0) {
                  return SizedBox(
                    height: 231,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 500,
                          color: Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(flex: 4, child: Container()),
                              Container(
                                margin: EdgeInsets.only(left: 20, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "エンターテイメント",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "・ライブ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, bottom: 15),
                                child: Text(
                                  "色々ある",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.black26,
                        )
                      ],
                    ),
                  );
                  Container();
                }

                if (randomint == 0 ||
                    randomint == 1 ||
                    randomint == 2 ||
                    randomint == 3 ||
                    randomint == 4) {
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

                if (randomint == 5) {
                  return SizedBox(
                    height: 190,
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
                                flex: 5,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      //flex: 20,
                                      child: Text(
                                        "$index.トレンド",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                              ),
                              const Expanded(
                                flex: 5,
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
                                flex: 25,
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 1, bottom: 4, right: 30),
                                    width: 500,
                                    child: Container(
                                      padding: const EdgeInsets.all(1.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black12, width: 0.5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              children: [
                                                Container(
                                                    child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12, right: 4),
                                                  width: 17,
                                                  height: 17,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.black45,
                                                    shape: BoxShape.circle,
                                                  ),
                                                )),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 4),
                                                    child: const Text(
                                                      "アカウント名前",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )),
                                                Container(
                                                    child: const Text(
                                                  "@accountname",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                )),
                                                Text(
                                                  "・${math.Random().nextInt(11) + 1}時間",
                                                  style: const TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  //color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container()),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 10),
                                                            height: 60,
                                                            width: 60,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black26,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                            )),
                                                      ],
                                                    ),
                                                    Expanded(
                                                      flex: 20,
                                                      child: Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8,
                                                                ),
                                                                child: Text(
                                                                  "なんか描いてる場所",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8,
                                                                  bottom: 30,
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .more_horiz,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Container(),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 5,
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
                      ],
                    ),
                  );
                }
                return SizedBox(
                  height: 70,
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
                              flex: 3,
                              child: Container(
                                child: Text(
                                  "${index}.トレンド",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
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
                              flex: 3,
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
          ],
        ),
      ),
    );
  }
}
