import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.comment),
                    title: Text(
                      'トピック',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.bookmark),
                    title: Text(
                      'ブックマーク',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_add_alt_1),
                    title: Text(
                      'Twiiterサークル',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
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
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 23),
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
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 22),
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
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 23),
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
            title: const Text(
              "通知",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
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
