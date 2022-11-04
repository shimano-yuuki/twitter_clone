import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "通知",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 16,
              ),
              onPressed: () {},
            ),
            bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 4,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "すべて",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "@ツイート",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                ),
              ),
            ],
            backgroundColor: const Color.fromARGB(255, 243, 243, 243),
            elevation: 0.0,
          ),
          body: TabBarView(children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 80,
                  decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.black26))),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        width: 60,
                        child: Icon(Icons.person,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                      Container(width: 15,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.cyan,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 3)),
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.indigo,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 3)),
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 3)),
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            children: [
                              Text(
                                "data",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("さんと他4人にフォローされました")
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 80,
                  decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.black26))),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        width: 60,
                        child: Icon(Icons.favorite,
                          color: Colors.pink,
                          size: 30,
                        ),
                      ),
                      Container(width: 15,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.cyan,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 3)),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            children: [
                              Text(
                                "data",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("さんがあなたのツイートをいいねしました")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 80,
                  decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.black26))),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        width: 60,
                        child: Icon(Icons.person,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                      Container(width: 15,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.lightGreen,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 3)),
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 3)),
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.pink,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            children: [
                              Text(
                                "banana",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("さんと他2人にフォローされました")
                            ],
                          )
                        ],
                      )
                    
                    ],
                  ),
                ),
                Container(
                    height: 100,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.black26))),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue[100]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "namae",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("@aaaaaa",
                                      style: TextStyle(color: Colors.black54)),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("2022/10/27",
                                      style: TextStyle(color: Colors.black54)),
                                ],
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "返信先:",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    "@bbbbbbb さん",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              ),
                              Text("ああああああああああああああああ"),
                              Expanded(
                                child: Row(
                                  children: [
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.chat_bubble_outline)),
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.cached)),
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite_border)),
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.ios_share)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                
              ],
            ),
            
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return  Expanded(
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.black26))),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue[100]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "namae",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("@aaaaaa",
                                      style: TextStyle(color: Colors.black54)),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("2022/10/27",
                                      style: TextStyle(color: Colors.black54)),
                                ],
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "返信先:",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    "@bbbbbbb さん",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              ),
                              Text("ああああああああああああああああ"),
                              Expanded(
                                child: Row(
                
                                  children: [
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.chat_bubble_outline)),
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.cached)),
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite_border)),
                                    IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.ios_share)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ]),
        ));
  }
}
