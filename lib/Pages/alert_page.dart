import 'package:codigo6_components/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  void myAlert(BuildContext mostrar) {
    showDialog(
      context: mostrar,
      //barrierDismissible evita que la alerta se cierre al hacer click fuera de ella
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Hola"),
          content: Text(
            "Este es el contenido de mi AlertDialog, donde estoy practicando",
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "TextButton",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "ElevatedButton",
              ),
            ),
          ],
        );
      },
    );
  }

  void myAlert2(BuildContext mostrar) {
    showDialog(
      context: mostrar,
      //barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(10),
          content: Column(
            //mainAxisSize permite especificar si la columna abarcara toda la pantalla posible o solo lo minimo segun los hijos
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Caregiverr Review",
                style: GoogleFonts.poppins(
                  color: Color(0xff6582B8),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Divider(
                thickness: 1.2,
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Color(0xff51688F),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              // CircleAvatar(
              //   backgroundColor: Colors.blueAccent,
              //   radius: 26.0,
              //   child: Icon(
              //     Icons.person,
              //     color: Colors.white,
              //     size: 30.0,
              //   ),
              // ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Amanda Jonhson",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff51688F),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Rate the care provided Sunday, Jan 9",
                style: TextStyle(
                  color: Color(0xff51688F),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xffF7F9FC),
                  border: Border.all(
                    color: Color(0xff51688F).withOpacity(0.17),
                  ),
                ),
                child: Text(
                  "Additional Comments ...",
                  style: GoogleFonts.poppins(
                    color: Color(0xff51688F),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(
                        color: Color(0xff51688F).withOpacity(0.17),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Not Now",
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff789BD6),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Submit Review",
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext alertas) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Alert Page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              myAlert(alertas);
            },
            child: Text("Alerta 1"),
          ),
          ElevatedButton(
            onPressed: () {
              myAlert2(alertas);
            },
            child: Text("Alerta 2"),
          ),
        ],
      ),
    );
  }
}
