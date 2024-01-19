import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> todoList = [];

  late TextEditingController _todoInputController;

void initState() {
    super.initState();
    _todoInputController = TextEditingController();
  }
  void dispose() {
    super.dispose();
    _todoInputController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text('Memo一覧'),
    ),
      body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _todoInputController,
                decoration: InputDecoration(hintText: '入力してください'),
              autofocus: true,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 0.0, right: 0.0, bottom: 30.0, left: 0.0),
            child: ElevatedButton(
              
              child: Text('保存'),
              onPressed: () {
                // 変数の変化をリアルタイムに通知する
                setState(
                  () {
                    // 何かしらの入力があるときだけ実行
                    if (_todoInputController.text.length > 0) {
                      // 配列に入力値を追加
                      todoList.add(_todoInputController.text);
                      // テキストボックスを初期化
                      _todoInputController.clear();
                    }
                  },
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              // リストの長さを計算
              itemCount: todoList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(
                      top: 0.0, right: 0.0, bottom: 0.0, left: 0.0),
                  margin: EdgeInsets.only(
                      top: 1.0, right: 0.0, bottom: 0.0, left: 0.0),
                  color: Colors.cyan[600],
                  child: ListTile(
                    leading: Icon(Icons.star),
                    title: Text(
                      // リストに表示する文字列を設定
                      ("$index : ${todoList[index]}"),
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
