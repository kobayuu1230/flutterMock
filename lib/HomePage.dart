import 'package:flutter/material.dart';
import 'firstpage.dart';

class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("ページ(0)画像を選択")
      ),
      body : Center(
        child: TextButton(
          child: Text("Firstページへ遷移する"),
          onPressed: (){
           // （1） 指定した画面に遷移する
            Navigator.push(
              context, 
              MaterialPageRoute(
              // （2） 実際に表示するページ(ウィジェット)を指定する
              builder: (context) => firstPage()
        ));
          },
        ),
      )
    );
  }
}