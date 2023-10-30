import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
      //Menu Burger
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {},
      ),
      // Imagem Central
      title: Center(child: Image.asset('lib/image/fazenda.png')),
      //Notificação Icon
      actions: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Icon(Icons.notifications, color: Colors.black, size: 30),
        ),
      ]);
}
