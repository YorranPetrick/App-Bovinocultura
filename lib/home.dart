import 'package:flutter/material.dart';

class ElevatedCardExample extends StatefulWidget {
  const ElevatedCardExample({super.key});

  @override
  State<ElevatedCardExample> createState() => _ElevatedCardExampleState();
}

class _ElevatedCardExampleState extends State<ElevatedCardExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _card(context, 'Card'),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}

Card _card(BuildContext context, String text) {
  return Card(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    color: Color(0xfff6be2c),
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Center(
        child: Text(text),
      ),
    ),
  );
}
