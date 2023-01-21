import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page"),
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       color: Colors.blue,
      //       width: 200,
      //       height: 200,
      //     ),
      //   ],
      body: ListView.builder(
        itemCount: 3, //Especifica la cantidad de items que manejara el listview
        itemBuilder: (BuildContext context, int entero) {
          print(entero);
          return Text(
            "Hola",
          ); //Si no se especifica un itemCount, se generara infinitamente este widget
        },
      ),
    );
  }
}
