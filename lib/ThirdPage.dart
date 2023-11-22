import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("ページ(3)結合完了")
      ),
      body : Center(
        child: TextButton(
          child: Text("最初のページに戻る"),
          onPressed: (){
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      )
    );
  }
}