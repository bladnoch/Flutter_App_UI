/*
    main.dart
    creat flutter application for practice to make UI, and webtoon app.
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
          backgroundColor: Color(0xff181818) , //0xFF + rgb값
          body: Padding( // 4 방향 외곽 간격
            padding: EdgeInsets.symmetric(
              horizontal: 40, //패팅
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox( //박스를 만들어줌
                height: 80, //맨 위에서 텍스트 바로 위 까지의 거리
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end, //텍스트 위치 오른쪽 정렬
                children: [
                  Column( //Hey, Daniel과 Welcome to 를 나눠주는 콜럼
                    crossAxisAlignment: CrossAxisAlignment.end, //텍스트간 위치 오른쪽 정렬
                    children: [
                      Text("Hey, Daniel", //텍스트 스타일
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),),
                      Text("Welcome to MyApp_1", //텍스트 스타일
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],),
                ],
              ),
              SizedBox( //box for "total balance"
                height: 120,
              ),
              Text("Total Balance",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox( //box for "Balance"
                height: 5,
              ),
              Text("\$5 194 482",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox( // for two buttons under balance
                height: 30,
              ),
                Row( //row for two buttons next each other
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff2b33a),
                        borderRadius: BorderRadius.circular(45) //side
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 40,
                        ),
                        child: Text("Transfer",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                  ],
                )
            ],
          ),
          ),
        ),
      );
  }

}