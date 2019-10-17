import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My First App",
      home: new HomePage(title: "My First App"),
    );

  }
  
}
class HomePage extends StatelessWidget{
  final String title;
  HomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new GradientAppBar(
        title: new Text(this.title),
        backgroundColorStart: Colors. redAccent,
        backgroundColorEnd: Colors.blue,),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.5,1],
          colors: [Colors.red,Colors.blue]
        )),
        child: new HelloWorldText(),
      ));
  }

}
class HelloWorldText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('Hello World',
      textDirection: TextDirection.ltr,
      style: new TextStyle(
        fontSize: 48.0,
        color: Colors.white,
        fontWeight: FontWeight.bold))
    );
  }
}
