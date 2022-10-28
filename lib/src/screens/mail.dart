import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
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
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
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
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
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
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
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
          'メッセージ',
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
        itemCount: 10,
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.mail_outline),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'メッセージリクエスト',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('1件の新しいリクエスト'),
                      ],
                    )),
                  ],
                ),
              ),
            );
          }

          return SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('fugaくん'),
                        Expanded(
                          child: Text(
                            '昨日はありがとうございました！クラブのVIP席楽しかったです！あのあとどうなったんですか？',
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
