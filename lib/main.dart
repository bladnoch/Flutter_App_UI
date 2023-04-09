/*
    main.dart
    creat flutter application for practice to make UI
    4-9-2023
    Dounguk Kim
 */
import 'package:flutter/material.dart';

class Player{ //클래스 연습용 지워도 되는 클래스
  String? name;
  Player({this.name});

}


void main() {
  var player=Player(name: "Daniel");  // 클래스 연습용 지워도 됨
  runApp(App());
}

class App extends StatelessWidget{ // StatelessWidget: 무언가를 화면에 띄워주는 역할

  @override
  Widget build(BuildContext context){ //StatelessWidget을 사용할때 build()를 만들어 줘야한다.
    return MaterialApp( // 디자인의 기본 형태(MaterialApp: 안드로이드)
        home: Scaffold( // 디자인의 기본 뼈대(Scaffold)
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.green,
            foregroundColor: Colors.red,
            title:Text("Hello,flutter!"),
          ),
          body: Center(
            child: Text("hello world!"),

          ),
        ),
      );
  }

}