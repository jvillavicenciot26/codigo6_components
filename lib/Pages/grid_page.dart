import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid Page",
        ),
      ),
      body: GridView.count(
        crossAxisSpacing: 10, //espacio aplicado por filas
        mainAxisSpacing: 12, //espacio aplicado por columnas
        childAspectRatio: 0.5, //controla la altura a los hijos
        crossAxisCount: 3, //cantidad de elementos por fila
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Color(0xffF1F1F1),
              border: Border.all(
                color: Colors.black.withOpacity(0.12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.network(
                      "https://images.cdn2.buscalibre.com/fit-in/360x360/b0/2b/b02b8436ec7bb1e24d5fc49a2c1539cf.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Text(
                  "Iron Man",
                  style: GoogleFonts.manrope(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Tony Stark",
                  style: GoogleFonts.manrope(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Marvel",
                  style: GoogleFonts.manrope(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Anthony Edward Stark nació el 29 de mayo de 1970, en Manhattan, Nueva York, hijo de Howard Stark, un famoso inventor y empresario, y Maria Stark, una socialité y filántropa de Nueva York. Al crecer bajo los ojos del mayordomo Edwin Jarvis, su vida se caracterizó por una relación fría con su padre.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.manrope(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   color: Colors.red,
          // ),
          // Container(
          //   color: Colors.blue,
          // ),
          // Container(
          //   color: Colors.indigo,
          // ),
          // Container(
          //   color: Colors.pink,
          // ),
          // Container(
          //   color: Colors.green,
          // ),
          // Container(
          //   color: Colors.purple,
          // ),
          // Container(
          //   color: Colors.amber,
          // ),
          // Container(
          //   color: Colors.red,
          // ),
          // Container(
          //   color: Colors.blue,
          // ),
          // Container(
          //   color: Colors.indigo,
          // ),
          // Container(
          //   color: Colors.pink,
          // ),
          // Container(
          //   color: Colors.green,
          // ),
          // Container(
          //   color: Colors.purple,
          // ),
        ],
      ),
    );
  }
}
