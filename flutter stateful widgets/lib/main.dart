import 'package:flutter/material.dart';

/// main.dart
/// second study of stateful widget
/// @since 4-29-2023
/// @author Dounguk Kim


void main(){
  runApp(App());
}

class App extends StatefulWidget{
  @override
  State<App> createState() => _AppState();
}


class _AppState extends State<App>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( //theme 추가 주제는 붉은색
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyLargeTitle(),
            ],)
          ),
        ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("My large title",
    style: TextStyle(fontSize:30,
        color: Theme.of(context).textTheme.titleLarge?.color,
    ),
    );
  }
}