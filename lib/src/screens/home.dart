import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return DefaultTabController(
      initialIndex: 0, // 最初に表示するタブ
      length: 2, // タブの数
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
          actions: [
            IconButton(
              icon: Icon(
                Icons.auto_awesome_outlined,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {},
            )
          ],
          title: IconButton(
            icon: SvgPicture.asset(
              'assets/twitter_icons.svg',
              semanticsLabel: 'twitter_icons',
              width: 50,
              height: 50,
            ),
            onPressed: () {},
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
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          elevation: 0.0,
          bottom: const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.blue,
            tabs: <Widget>[
              // Tab(text: 'ホーム',),
              Tab(
                child: Text(
                  'ホーム',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '台風・地震',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('ホーム', style: TextStyle(fontSize: 32.0)),
            ),
            Center(
              child: Text('台風地震', style: TextStyle(fontSize: 32.0)),
            ),
          ],
        ),
        floatingActionButton: Container(
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
