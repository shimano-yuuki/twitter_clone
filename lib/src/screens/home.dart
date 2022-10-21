import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0, // 最初に表示するタブ
      length: 2, // タブの数
      child: Scaffold(
        appBar: AppBar(
          actions: [IconButton(icon: Icon(Icons.auto_awesome_outlined, color: Colors.black,size: 35,),onPressed: (){},)],
          title: IconButton(icon: SvgPicture.asset('assets/twitter_icons.svg',semanticsLabel: 'twitter_icons',width: 50,height: 50,),onPressed: (){},),
          leading: IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 16,
            ),
            onPressed: () {},
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
          children:[
            Center(
              child: Text('ホーム', style: TextStyle(fontSize: 32.0)),
            ),

            Center(
              child: Text('台風地震', style: TextStyle(fontSize: 32.0)),
            ),
          ],
        ),
        floatingActionButton: Container(child: FloatingActionButton(child:Icon(Icons.add),onPressed: () {},),),
      ),
    );
  }
}