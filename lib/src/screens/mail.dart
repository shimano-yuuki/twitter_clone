import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'メッセージ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
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
