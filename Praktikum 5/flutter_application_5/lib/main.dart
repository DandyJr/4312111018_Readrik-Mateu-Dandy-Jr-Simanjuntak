import 'package:flutter/material.dart';
import 'package:flutter_application_5/ui_view/PageTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//  This  widget  is  the  root  of  your  application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter  Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/page2': (BuildContext context) => PageTwo(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigator"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.yellow,
              child: Text("Page  2"),
              onPressed: () {
                Navigator.of(context).pushNamed('/page2');
//  dibuat  berikutnya
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageTwo()));
              },
            ),
          ],
        ));
  }
}
