import 'package:flutter/material.dart';

/// main.dart
/// first study of stateful widget
/// @since 4-27-2023
/// @author Dounguk Kim


void main(){
  runApp(App());
}

class App extends StatefulWidget{
  @override
  State<App> createState() => _AppState();
}


class _AppState extends State<App>{
  int counter=0;

  void onClicked(){
    setState(() {//data is you
      counter+=1;
    });

}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("click count",
            style: TextStyle(fontSize:30),
            ),
            Text('$counter',
            style: TextStyle(fontSize: 30),
            ),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                  icon: const Icon(Icons.add_box_rounded,
                  ),
              ),
          ],)
        ),
      ),
    );
  }
}