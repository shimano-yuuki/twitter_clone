import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '通知',
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        elevation: 0.0,
      ),
      body: const Center(
          child: Text('お知らせ画面',
              style: TextStyle(
                fontSize: 32.0,
              ))),
    );
  }
}
