import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Repeat Contact';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 1; i < 6; i++) ListTile()
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
      Container(
      width: 50,
        height: 50,
        decoration: BoxDecoration(
         color: Colors.blueGrey,
          image: DecorationImage(
              image: AssetImage('images/neo240.png'),
            fit: BoxFit.cover,
      ),
          border: Border.all(),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
        Container(
        padding: EdgeInsets.all(20),
        child:
            Row(
                children: <Widget>[
              Column(children: <Widget>[
                Text("Neo\n4142434445\n31.12.1987",
                  style: TextStyle(fontSize: 15)),
  ],
        ),
    ],
    ),
    ),
    ],
    );
  }
}
