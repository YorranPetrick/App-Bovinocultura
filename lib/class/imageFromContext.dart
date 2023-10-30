import 'package:flutter/material.dart';

Image imageFromContext(
    BuildContext context, String path, double sizewidth, double sizeheight) {
  double width = MediaQuery.of(context).size.width *
      sizewidth; // Use o whidth do parametro
  double height = MediaQuery.of(context).size.height *
      sizeheight; // Use o height do parametro

  return Image(
    image: AssetImage(path), // Use o path da imagem
    width: width,
    height: height,
  );
}
