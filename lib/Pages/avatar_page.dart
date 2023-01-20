import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //La flecha del appbar solo aparece si la pantalla es llamada por MaterialPageRoute
      appBar: AppBar(
        title: const Text("Avatar Page"),
        actions: [
          Icon(Icons.thumb_down),
          Icon(Icons.person),
        ],
      ),
      body: Column(
        children: [
          // Image.network(
          //   "https://images.pexels.com/photos/10162536/pexels-photo-10162536.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          // ),
          //FadeInImage, aplica un efecto de desvanecer a la imagen
          FadeInImage(
            fadeInCurve: Curves.bounceIn,
            //fadeInDuration permite controlar el tiempo del placeholder
            fadeInDuration: Duration(seconds: 4),
            placeholder: AssetImage("assets/images/loading.gif"),
            image: NetworkImage(
              "https://images.pexels.com/photos/10162536/pexels-photo-10162536.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Atras"),
      //     onPressed: () {
      //       Navigator.pop(context);
      //       //context siempre debe pasarse
      //     },
      //   ),
      // ),
    );
  }
}
