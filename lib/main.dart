import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '6488160 Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '6488160 Home Page Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          MUlogo(),
          SizedBox(width: 30),
          Text(this.title),
        ],
      )),
      body: Center(
        child: ListView(
          children: <Widget>[
            Product(),
            Product(),
            Product(),
            Product(),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset('assets/appimages/iphone.png'),
      Text('iPhone 15')
    ]);
  }
}

class MUlogo extends StatelessWidget {
  const MUlogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/4/45/Mahidol_U.png'),
    );
  }
}
