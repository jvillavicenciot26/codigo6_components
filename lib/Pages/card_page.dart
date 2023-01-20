import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(63, 81, 181, 1),
        title: Text("Card Page"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  //blurRadius aplica un difuminado a la sombra
                  blurRadius: 12,
                  //offset establece la posición de la sombra
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  textAlign: TextAlign.center,
                  // maxlines: establece numero de lineas maximo que ocupara el texto, si es muy largo se truncara
                  maxLines: 3,
                  // overflow: coloca un indicador de que el texto ha sido truncado y que continua
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    height: 1.37,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Share",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            //padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.all(12.0),
            //decoration solo afecta al container y no al hijo
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Row(
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(14),
                //     bottomLeft: Radius.circular(14),
                //   ),
                //   child: Image.network(
                //     "https://images.pexels.com/photos/4310574/pexels-photo-4310574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                //     width: 200,
                //     height: 140,
                //     fit: BoxFit.cover,
                //   ),
                // ),

                //Card2
                //Imagen de la izquierda
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14.0),
                      topLeft: Radius.circular(14.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/4310574/pexels-photo-4310574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Bienvenida general al grupo de flutter en CodiGo",
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 18,
                            height: 1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 14,
                            height: 1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                //Fin Card2
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(12.0),
            //decoration solo afecta al container y no al hijo
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              border:
                  Border.all(color: Colors.black.withOpacity(0.23), width: 4),
            ),
            child: Row(
              children: [
                // Card 3
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bienvenida",
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 18,
                          height: 1,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 14,
                          height: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(14.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/4310574/pexels-photo-4310574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  ),
                ),
                // Fin Card 3
              ],
            ),
          ),
        ],
      ),
    );
  }
}
