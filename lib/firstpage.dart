import 'package:flutter/material.dart';
import 'SecondPage.dart';
class firstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("ページ(1)縦か横か選んでください")
      ),
      body : Center(
        child: TextButton(
          child: Text("secondページへ遷移する"),
          onPressed: (){
             // （1） 指定した画面に遷移する
            Navigator.push(
              context, 
              MaterialPageRoute(
              // （2） 実際に表示するページ(ウィジェット)を指定する
              builder: (context) => SecondPage()
        ));
          },
        ),
      )
    );
  }
}