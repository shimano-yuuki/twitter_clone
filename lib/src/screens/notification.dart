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
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
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
                              // Text("ああああああああああああああああ"),
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
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: IconButton(
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: Icon(Icons.logout),
                                      ),
                                    ),
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
