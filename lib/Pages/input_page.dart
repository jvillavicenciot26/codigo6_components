import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget {
  //TextEditingController para controlar la edicion de un TextField
  TextEditingController firstNameController = TextEditingController();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Input Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                cursorColor: Colors.red,
                cursorWidth: 15,
                textAlign: TextAlign.center,
                maxLength: 5,
                style: GoogleFonts.montserrat(
                  fontSize: 14.0,
                  color: Colors.amber,
                ),
                decoration: InputDecoration(
                  hintText: "Ingresa tu email",
                  icon: Icon(Icons.mail),
                  prefixIcon: Icon(Icons.location_city),
                  suffixIcon: Icon(Icons.person),
                  labelText: "Correo Electronico",
                  //label: Text("Hola"), labeltext y label no se puede usar juntos dentro de un textfield
                ),
                // onChanged se ejecuta en cada cambio en la caja de texto
                // el parametro es lo que se ingresa en la caja de texto
                onChanged: (String texto) {
                  print(texto);
                },
                // onSubmitted se ejecuta cuando presionamos check o enter en el teclado
                // el parametro es lo que se ingresa en la caja de texto
                onSubmitted: (String texto1) {
                  print(texto1);
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                style: GoogleFonts.manrope(
                  fontSize: 14.0,
                ),
                decoration: InputDecoration(
                  hintText: "Buscar producto ....",
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 15.0,
                  ),
                  fillColor: Color(0xffF6F7F9), //Color de rellleno
                  filled: true, // indica si el textfield tendra relleno
                  focusedBorder: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(20.0),
                    // borderSide: BorderSide(
                    //   color: Colors.red,
                    //   width: 5.0,
                    // ),
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(20.0),
                    // borderSide: BorderSide(
                    //   color: Colors.red,
                    //   width: 5.0,
                    // ),
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    blurRadius: 12,
                    offset: const Offset(5, 5),
                  ),
                ]),
                child: TextField(
                  style: GoogleFonts.manrope(
                    fontSize: 14.0,
                  ),
                  decoration: InputDecoration(
                    hintText: "Ingresa tu telefono",
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.smartphone,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 15.0,
                    ),
                    fillColor: Colors.white, //Color de rellleno
                    filled: true, // indica si el textfield tendra relleno
                    focusedBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(20.0),
                      // borderSide: BorderSide(
                      //   color: Colors.red,
                      //   width: 5.0,
                      // ),
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(20.0),
                      // borderSide: BorderSide(
                      //   color: Colors.red,
                      //   width: 5.0,
                      // ),
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller:
                    firstNameController, //Controlador para manejar valor del textfield
                decoration: InputDecoration(
                  hintText: "Ingresa tu nombre...",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Bienvenido ${firstNameController.text}");
                },
                child: Text(
                  "Iniciar Sesión",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  firstNameController.clear();
                },
                child: Text(
                  "Opciones",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
