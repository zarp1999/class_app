import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.home,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.black,
        child: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Goodbye $name'),
        )),
      ),
    );
  }
}
