import 'package:codigo6_components/Pages/alert_page.dart';
import 'package:codigo6_components/Pages/avatar_page.dart';
import 'package:codigo6_components/Pages/card_page.dart';
import 'package:codigo6_components/Pages/grid_page.dart';
import 'package:codigo6_components/Pages/input_page.dart';
import 'package:codigo6_components/Pages/list_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //SingleChildScrollView agrega un scroll basico a la pantalla
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Image.network(
                //   "https://i.pinimg.com/736x/ef/3f/df/ef3fdfd2f39a4f5d4a9f5557c0f21246.jpg",
                // ),
                const SizedBox(
                  height: 30,
                ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   //color: Colors.blue,
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     //borderRadius: BorderRadius.circular(14.0),
                //   ),
                //   child: ClipRRect(
                //     //Corta el widget hijo
                //     borderRadius: BorderRadius.circular(30.0),
                //     child: Image.network(
                //       "https://i.pinimg.com/736x/ef/3f/df/ef3fdfd2f39a4f5d4a9f5557c0f21246.jpg",
                //     ),
                //   ),
                // ),

                const SizedBox(
                  height: 16,
                ),

                Container(
                  height: 120,
                  width: 120,
                  //margin: EdgeInsets.all(50),
                  //Cuando se usa BoxDecoration, el color va dentro
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      //Aplicar sombras
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        //offset Determina la posicion del borde en el eje x y en el eje y con respecto a la imagen
                        offset: Offset(10, 10),
                        //blurRadius aplica un difuminado o un efecto borroso al borde
                        blurRadius: 10,
                      ),
                      // BoxShadow(
                      //   color: Colors.yellow,
                      //   //offset Determina la posicion del borde en el eje x y en el eje y con respecto al container
                      //   offset: Offset(-10, -5),
                      //   //blurRadius aplica un difuminado o un efecto borroso al borde
                      //   blurRadius: 10,
                      // ),
                    ],
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/ef/3f/df/ef3fdfd2f39a4f5d4a9f5557c0f21246.jpg",
                      ),
                    ),
                  ),
                  // child: const Text(
                  //   "Flutter components",
                  // ),
                ),
                Text(
                  "Flutter components",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sofia(
                    fontSize: 22.0,
                    color: Colors.black.withOpacity(0.75),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Flutter components, esto es una prueba flutter componentes usando libreria de pub.dev que se llama Google Fonts",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sofia(
                    fontSize: 14.0,
                    color: Colors.black.withOpacity(0.75),
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                ItemMenuWidget(
                  title: "Avatars",
                  description: "Detalle del avatar",
                  icon: Icons.person,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => AvatarPage(),
                      ),
                    );
                  },
                ),
                ItemMenuWidget(
                  title: "Alertas",
                  description: "Detalle de alertas",
                  icon: Icons.add_alert,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => AlertPage(),
                      ),
                    );
                  },
                ),
                ItemMenuWidget(
                  title: "Card",
                  description: "Detalle de cards",
                  icon: Icons.add_alert,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => CardPage(),
                      ),
                    );
                  },
                ),
                ItemMenuWidget(
                  title: "Input",
                  description: "Detalle de input",
                  icon: Icons.input,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => InputPage(),
                      ),
                    );
                  },
                ),
                ItemMenuWidget(
                  title: "ListView",
                  description: "Detalle de ListView",
                  icon: Icons.list,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ListViewPage(),
                      ),
                    );
                  },
                ),
                ItemMenuWidget(
                  title: "GridPage",
                  description: "Detalle de GridPage",
                  icon: Icons.grid_3x3,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => GridPage(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemMenuWidget extends StatelessWidget {
  String title;
  String description;
  IconData icon;
  VoidCallback onTap;
  ItemMenuWidget({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(4, 4),
              blurRadius: 12,
            )
          ],
        ),
        child: ListTile(
          title: Text(
            title,
            style: GoogleFonts.manrope(
              fontSize: 14,
              color: Colors.black.withOpacity(0.75),
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            description,
            style: GoogleFonts.manrope(
              fontSize: 13,
              color: Colors.black.withOpacity(0.60),
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Icon(
            icon,
          ),
          trailing: Icon(
            Icons.chevron_right,
          ),
        ),
      ),
    );
  }
}
