import 'package:flutter/material.dart';
import 'package:app_admfazenda/home.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff6be2c),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  _imageFromContext(
                    context,
                    'lib/image/logo.png',
                    0.8,
                    0.4,
                  ),
                  //
                  _sizedbox(context, 0.03),
                  //
                  _box(
                    const Icon(
                      Icons.supervised_user_circle,
                      color: Colors.black,
                    ),
                    context,
                    'UserName',
                    0.9,
                  ),
                  //
                  _sizedbox(context, 0.03),
                  //
                  _box(
                    const Icon(
                      Icons.password,
                      color: Colors.black,
                    ),
                    context,
                    'Password',
                    0.9,
                  ),
                  //
                  _sizedbox(context, 0.05),
                  //
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    //height: MediaQuery.of(context).size.height * 0.08,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ElevatedCardExample(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xff545F71),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  //
                  _sizedbox(context, 0.05),
                  //
                  const Padding(
                    padding:  EdgeInsets.all(0.8),
                    child:  Text('OR'),
                  ),
                  //
                  //_sizedbox(context, 0.1),
                  //
                  _imageFromContext(context, 'lib/image/browser.png', 0.2, 0.2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Criação do Metodo TextFild
SizedBox _box(
    Icon icon, BuildContext context, String nameBox, double sizewidth) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * sizewidth,
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: icon, // Use o ícone passado como parâmetro
        hintText: nameBox,
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder(),
      ),
    ),
  );
}

// Criação do SizedBox responsivo
SizedBox _sizedbox(BuildContext context, double size) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * size,
  );
}

// Criação de um metodo para retornar Imagens responsivas
Image _imageFromContext(
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
