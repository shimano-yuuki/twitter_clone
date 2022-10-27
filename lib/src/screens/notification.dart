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
                  height: 90,
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
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("2022/10/27",
                                    style: TextStyle(color: Colors.grey)),
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
                return Container(
                  height: 90,
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
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("2022/10/27",
                                    style: TextStyle(color: Colors.grey)),
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
          ]),
        ));
  }
}
