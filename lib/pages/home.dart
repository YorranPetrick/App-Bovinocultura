import 'package:flutter/material.dart';
import '../class/appBar.dart';
import '../class/barItem.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final taps = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Dashboard'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        //
        body: taps[_currentIndex],
        //

        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            barItem('lib/image/home.png'),
            barItem('lib/image/grafico.png'),
          ],
        ),
      ),
    );
  }
}
