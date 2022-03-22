import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing"),
      ),
    );
  }
}
final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];