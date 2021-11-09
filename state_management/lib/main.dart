import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

/** Su dung cach truyen thong */
// class MyApp extends StatelessWidget {
//   final String data = "Nguyen Duy Hunggggggggggggggggggg";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Container(),
//         ),
//         body: Level1(data),
//       ),
//     );
//   }
// }

// class Level1 extends StatelessWidget {
//   final String data;
//   Level1(this.data);

//   @override
//   Widget build(BuildContext context) {
//     return Level2(data);
//   }
// }

// class Level2 extends StatelessWidget {
//   final String data;
//   Level2(this.data);
//   @override
//   Widget build(BuildContext context) {
//     return Level3(data);
//   }
// }

// class Level3 extends StatelessWidget {
//   final String data;
//   Level3(this.data);
//   @override
//   Widget build(BuildContext context) {
//     return Text(data); // Display data retrieve from parent widget
//   }
// }

/** Su dung Provider */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (_) => Data(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Container(
              child: MyText(),
            ),
          ),
          body: Level1(),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Level2();
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context, listen: true).data);
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context, listen: false).data);
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        Provider.of<Data>(context, listen: false).changeString(value);
      },
    );
  }
}

class Data extends ChangeNotifier {
  String data = "Nguyen Duy Hung";

  void changeString(String newValue) {
    data = newValue;
    notifyListeners();
  }
}
