import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo'),
        ),
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 150,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: EdgeInsets.all(20),
                child: Text('Container 1'),
                color: Colors.red,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20.0, right: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Text("Container 2"),
                color: Colors.blueGrey,
              ),
              Container(
                height: 150.0,
                width: double.infinity,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Text('Container 3'),
              )
            ],
          ),
        ),
        // body: Center(
        //   child: buildRow(),
        // ),
      ),
    );
  }

  Widget buildRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/diamond.png'),
          Image.asset('images/diamond.png'),
          Image.asset('images/diamond.png'),
        ],
      );

  Widget buildColumn() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/diamond.png'),
          Image.asset('images/diamond.png'),
          Image.asset('images/diamond.png'),
        ],
      );
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//           backgroundColor: Colors.cyan[300],
//           appBar: AppBar(
//             title: Text('Im rich'),
//             backgroundColor: Colors.green[100],
//           ),
//           body: Center(child: Image(image: AssetImage('images/diamond.png')))),
//     ),
//   );
// }

// void main() {
//   runApp(MaterialApp(
//       home: Center(
//     child: Text('Hello World'),
//   )));
// }
