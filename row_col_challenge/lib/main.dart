import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/daidien.jpg'),
                ),
                Text(
                  'Nguyen Duy Hung',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontFamily: 'FredokaOne',
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      color: Colors.amber),
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: Divider(
                    color: Colors.amberAccent,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.amberAccent,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.call,
                          size: 30,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "+84 0342 606 883sds",
                          style: TextStyle(
                            fontFamily: 'FredokaOne',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.amberAccent,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "hungreoA7@gmail.com",
                        style: TextStyle(
                          fontFamily: 'FredokaOne',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // Using cards
                Card(
                  color: Colors.amberAccent,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.work_off,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy ",
                          style: TextStyle(
                            fontFamily: 'FredokaOne',
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // Using cards not use Sizedbox for padding
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ListTile(
                      leading: Icon(
                        Icons.ac_unit,
                        size: 30,
                      ),
                      title: Text(
                        'Contact for working',
                        style: TextStyle(
                          fontFamily: 'FredokaOne',
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LayoutChallenge2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Colors.red,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                height: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Colors.blueAccent,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}

class LayoutChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.red),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.greenAccent),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.blue),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const iconSize = 50;
    Widget main = Scaffold(
      appBar: AppBar(title: Text('Stack')),
    );
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Stack')),
      // body: Stack(
      //   // fit: StackFit.expand,
      //   // children: <Widget>[
      //   //   main,
      //   //   Banner(
      //   //     message: "Top Start",
      //   //     location: BannerLocation.topStart,
      //   //   ),
      //   //   Banner(
      //   //     message: "Top End",
      //   //     location: BannerLocation.topEnd,
      //   //   ),
      //   //   Banner(
      //   //     message: "Bottom Start",
      //   //     location: BannerLocation.bottomStart,
      //   //   ),
      //   //   Banner(
      //   //     message: "Bottom End",
      //   //     location: BannerLocation.bottomEnd,
      //   //   ),
      //   // ],

      //   fit: StackFit.expand,
      //   children: <Widget>[
      //     Material(color: Colors.yellowAccent),
      //     Positioned(
      //       top: 0,
      //       left: 0,
      //       child: Icon(Icons.star, size: 50),
      //     ),
      //     Positioned(
      //       right: 0,
      //       bottom: 0,
      //       child: Icon(Icons.call, size: 50),
      //     ),
      //   ],
      // ),

      // body: LayoutBuilder(
      //   builder: (context, constraints) => Stack(
      //     fit: StackFit.expand,
      //     children: [
      //       Material(color: Colors.amber),
      //       Positioned(top: 0, child: Icon(Icons.star_border, size: 60)),
      //       Positioned(
      //           top: constraints.maxHeight - 60,
      //           left: constraints.maxWidth - 50,
      //           child: Icon(Icons.call, size: 50)),
      //     ],
      //   ),
      // ),

      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.redAccent),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.deepOrangeAccent),
            ),
            flex: 2,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(color: Colors.lightGreenAccent),
          ))
        ],
      ),
    ));
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text('MainAxisAlignment.start'),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Container(
//           color: Colors.yellow[700],
//           margin: EdgeInsets.all(5),
//           // Row
//           // child: Row(
//           // mainAxisAlignment: MainAxisAlignment.start,
//           // mainAxisAlignment: MainAxisAlignment.center,
//           // mainAxisAlignment: MainAxisAlignment.end,
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //   children: <Widget>[
//           //     Icon(
//           //       Icons.star,
//           //       size: 40,
//           //     ),
//           //     Icon(
//           //       Icons.star,
//           //       size: 40,
//           //     ),
//           //     Icon(
//           //       Icons.star,
//           //       size: 40,
//           //     ),
//           //   ],
//           // ),

//           // Column
//           // child: Column(
//           //   // mainAxisAlignment: MainAxisAlignment.start,
//           //   // mainAxisAlignment: MainAxisAlignment.center,
//           //   // mainAxisAlignment: MainAxisAlignment.end,
//           //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //   children: <Widget>[
//           //     Icon(
//           //       Icons.star,
//           //       size: 40,
//           //     ),
//           //     Icon(
//           //       Icons.star,
//           //       size: 40,
//           //     ),
//           //     Icon(
//           //       Icons.star,
//           //       size: 40,
//           //     ),
//           //   ],
//           // ),

//           // Row of baseline
//           // child: Row(
//           //   // crossAxisAlignment: CrossAxisAlignment.center,
//           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //   textBaseline: TextBaseline.alphabetic,
//           //   children: <Widget>[
//           //     Text(
//           //       'Baseline',
//           //       style: Theme.of(context).textTheme.display3,
//           //     ),
//           //     Text(
//           //       'Baseline',
//           //       style: Theme.of(context).textTheme.body1,
//           //     )
//           //   ],
//           // ),

//           // child: Row(
//           //   // crossAxisAlignment: CrossAxisAlignment.start,
//           //   // crossAxisAlignment: CrossAxisAlignment.center,
//           //   // crossAxisAlignment: CrossAxisAlignment.end,
//           //   crossAxisAlignment: CrossAxisAlignment.stretch,
//           //   children: <Widget>[
//           //     Icon(Icons.star, size: 50),
//           //     Icon(Icons.star, size: 200),
//           //     Icon(Icons.star, size: 50),
//           //   ],
//           // ),

//           // child: Column(
//           //   // crossAxisAlignment: CrossAxisAlignment.start,
//           //   // crossAxisAlignment: CrossAxisAlignment.center,
//           //   // crossAxisAlignment: CrossAxisAlignment.end,
//           //   crossAxisAlignment: CrossAxisAlignment.stretch,
//           //   children: <Widget>[
//           //     Icon(Icons.star, size: 50),
//           //     Icon(Icons.star, size: 200),
//           //     Icon(Icons.star, size: 50),
//           //   ],
//           // ),

//           // child: Row(
//           //   // mainAxisSize: MainAxisSize.max,
//           //   mainAxisSize: MainAxisSize.min,
//           //   children: <Widget>[
//           //     Icon(Icons.star, size: 50),
//           //     Icon(Icons.star, size: 200),
//           //     Icon(Icons.star, size: 50),
//           //   ],
//           // ),

//           // child: Column(
//           //   children: <Widget>[
//           //     RaisedButton(
//           //       onPressed: () {},
//           //       child: Text('short'),
//           //     ),
//           //     RaisedButton(
//           //       onPressed: () {},
//           //       child: Text('Hungdassssssssssss'),
//           //     ),
//           //     RaisedButton(
//           //       onPressed: () {},
//           //       child: Text("vaiccccccccccccc"),
//           //     )
//           //   ],
//           // ),

//           // child: IntrinsicWidth(
//           //   child: Column(
//           //     crossAxisAlignment: CrossAxisAlignment.stretch,
//           //     children: <Widget>[
//           //       RaisedButton(
//           //         onPressed: () {},
//           //         child: Text('Ok'),
//           //       ),
//           //       RaisedButton(
//           //         onPressed: () {},
//           //         child: Text('asddddddddddddddddddddddddddddddddddddddddddd'),
//           //       ),
//           //       RaisedButton(
//           //         onPressed: () {},
//           //         child: Text('asdadasdasdsad'),
//           //       )
//           //     ],
//           //   ),
//           // ),

//           // child: IntrinsicHeight(
//           //   child: Column(
//           //     crossAxisAlignment: CrossAxisAlignment.stretch,
//           //     children: [
//           //       RaisedButton(
//           //         onPressed: () {},
//           //         child: Text("csacascasc"),
//           //       ),
//           //       RaisedButton(
//           //         onPressed: () {},
//           //         child: Text("csacascaddddddddddddddddc"),
//           //       ),
//           //       RaisedButton(
//           //         onPressed: () {},
//           //         child: Text("csacascssss2222asc"),
//           //       ),
//           //       RaisedButton(
//           //         onPressed: () {},
//           //         child: Text("csacascddasc"),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//         ),
//       ),
//     ));
//   }
// }
