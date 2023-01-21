import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewPage extends StatelessWidget {
  List<Map<String, String>> superhero = [
    {
      "superhero": "Batman",
      "publisher": "DC Comics",
      "alter_ego": "Bruce Wayne",
      "first_appearance": "Detective Comics #27",
      "characters": "Bruce Wayne",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg",
    },
    {
      "superhero": "Superman",
      "publisher": "DC Comics",
      "alter_ego": "Kal-El",
      "first_appearance": "Action Comics #1",
      "characters": "Kal-El",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Superman_SUP01_16_5b9b02501915d5.80725381.jpg",
    },
    {
      "superhero": "Flash",
      "publisher": "DC Comics",
      "alter_ego": "Jay Garrick",
      "first_appearance": "Flash Comics #1",
      "characters": "Jay Garrick, Barry Allen, Wally West, Bart Allen",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Flash_758_6055049612af35.61135649.jpg",
    },
    {
      "superhero": "Green Lantern",
      "publisher": "DC Comics",
      "alter_ego": "Alan Scott",
      "first_appearance": "All-American Comics #16",
      "characters":
          "Alan Scott, Hal Jordan, Guy Gardner, John Stewart, Kyle Raynor, Jade, Sinestro, Simon Baz",
      "image":
          "https://www.dc.com/sites/default/files/HJFLC_Cv1_R3_gallery_57fc3635f2c6a2.45566872.jpg",
    },
    {
      "superhero": "Green Arrow",
      "publisher": "DC Comics",
      "alter_ego": "Oliver Queen",
      "first_appearance": "More Fun Comics #73",
      "characters": "Oliver Queen",
      "image":
          "https://www.dc.com/sites/default/files/GalleryChar_1900x900_GA-22_05_52ab866d3a3405.51637692.jpg",
    },
    {
      "superhero": "Wonder Woman",
      "publisher": "DC Comics",
      "alter_ego": "Princess Diana",
      "first_appearance": "All Star Comics #8",
      "characters": "Princess Diana",
      "image":
          "https://www.dc.com/sites/default/files/GalleryChar_1900x900_WW8_52ab8f656e8b93.53907551.jpg",
    },
    {
      "superhero": "Martian Manhunter",
      "publisher": "DC Comics",
      "alter_ego": "J'onn J'onzz",
      "first_appearance": "Detective Comics #225",
      "characters": "Martian Manhunter",
      "image":
          "https://www.dc.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_MartianManhunter_20190116_5c3fd5c45bcdd1.05720862.jpg?itok=yRcyGyuU",
    },
    {
      "superhero": "Robin/Nightwing",
      "publisher": "DC Comics",
      "alter_ego": "Dick Grayson",
      "first_appearance": "Detective Comics #38",
      "characters": "Dick Grayson",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_DamianWayne_DTC_Cv1031_606e812ac8c4c0.55578192.jpg",
    },
    {
      "superhero": "Blue Beetle",
      "publisher": "DC Comics",
      "alter_ego": "Dan Garret",
      "first_appearance": "Mystery Men Comics #1",
      "characters": "Dan Garret, Ted Kord, Jaime Reyes",
      "image":
          "https://www.dc.com/sites/default/files/GalleryChar_1900x900_bluebeetle_52ab9892a51fb8.54714844.jpg",
    },
    {
      "superhero": "Black Canary",
      "publisher": "DC Comics",
      "alter_ego": "Dinah Drake",
      "first_appearance": "Flash Comics #86",
      "characters": "Dinah Drake, Dinah Lance",
      "image":
          "https://www.dc.com/sites/default/files/Movies-Gallery_BoP_Canary_5e167d571ab632.67962182.jpg",
    },
    {
      "superhero": "Spider Man",
      "publisher": "Marvel Comics",
      "alter_ego": "Peter Parker",
      "first_appearance": "Amazing Fantasy #15",
      "characters": "Peter Parker",
      "image":
          "https://i0.wp.com/www.tomosygrapas.com/wp-content/uploads/2022/07/Spider-Man-Banner.jpg?fit=1800%2C1013&ssl=1",
    },
    {
      "superhero": "Captain America",
      "publisher": "Marvel Comics",
      "alter_ego": "Steve Rogers",
      "first_appearance": "Captain America Comics #1",
      "characters": "Steve Rogers",
      "image":
          "https://www.akiracomics.com/imagenes/poridentidad?identidad=c1c19372-97ca-4fef-8d35-c9cb19fbcc01&ancho=850&alto=",
    },
    {
      "superhero": "Iron Man",
      "publisher": "Marvel Comics",
      "alter_ego": "Tony Stark",
      "first_appearance": "Tales of Suspense #39",
      "characters": "Tony Stark",
      "image":
          "https://images.cdn2.buscalibre.com/fit-in/360x360/b0/2b/b02b8436ec7bb1e24d5fc49a2c1539cf.jpg",
    },
    {
      "superhero": "Thor",
      "publisher": "Marvel Comics",
      "alter_ego": "Thor Odinson",
      "first_appearance": "Journey into Myster #83",
      "characters": "Thor Odinson",
      "image":
          "https://upload.wikimedia.org/wikipedia/en/1/17/Thor_by_Olivier_Coipel.png",
    },
    {
      "superhero": "Hulk",
      "publisher": "Marvel Comics",
      "alter_ego": "Bruce Banner",
      "first_appearance": "The Incredible Hulk #1",
      "characters": "Bruce Banner",
      "image":
          "https://c8.alamy.com/compes/2jd8fkh/hulk-marvel-comic-el-increible-comic-de-hulk-2003-2jd8fkh.jpg",
    },
    {
      "superhero": "Wolverine",
      "publisher": "Marvel Comics",
      "alter_ego": "James Howlett",
      "first_appearance": "The Incredible Hulk #180",
      "characters": "James Howlett",
      "image":
          "https://dam.smashmexico.com.mx/wp-content/uploads/2019/05/marvel-deluxe-el-regreso-de-wolverine-portada.jpg",
    },
    {
      "superhero": "Daredevil",
      "publisher": "Marvel Comics",
      "alter_ego": "Matthew Michael Murdock",
      "first_appearance": "Daredevil #1",
      "characters": "Matthew Michael Murdock",
      "image":
          "https://i.pinimg.com/736x/66/7f/b6/667fb60ce35c50cf2a36217fc65d9ff1.jpg",
    },
    {
      "superhero": "Hawkeye",
      "publisher": "Marvel Comics",
      "alter_ego": "Clinton Francis Barton",
      "first_appearance": "Tales of Suspense #57",
      "characters": "Clinton Francis Barton",
      "image":
          "https://i.pinimg.com/originals/b0/71/10/b071109bfa04912476ae08160cd0e276.jpg",
    },
    {
      "superhero": "Cyclops",
      "publisher": "Marvel Comics",
      "alter_ego": "Scott Summers",
      "first_appearance": "X-Men #1",
      "characters": "Scott Summers",
      "image":
          "https://i.pinimg.com/originals/e0/2f/ea/e02fea2fa761b8fca3d0abb88b880438.png",
    },
    {
      "superhero": "Silver Surfer",
      "publisher": "Marvel Comics",
      "alter_ego": "Norrin Radd",
      "first_appearance": "The Fantastic Four #48",
      "characters": "Norrin Radd",
      "image": "https://d1466nnw0ex81e.cloudfront.net/n_iv/600/897375.jpg",
    }
  ];

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
      // body: ListView.builder(
      //   itemCount:
      //       10, //Especifica la cantidad de items que manejara el listview
      //   //el termino builder hace referencia aque se construira algo, por lo general un widget
      //   itemBuilder: (BuildContext context, int index) {
      //     print(index);
      //     return Container(
      //       margin: EdgeInsets.symmetric(
      //         vertical: 10.0,
      //         horizontal: 12.0,
      //       ),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(14.0),
      //         color: Colors.amber,
      //         boxShadow: [
      //           BoxShadow(
      //             blurRadius: 10.0,
      //             color: Colors.black.withOpacity(0.4),
      //             offset: Offset(5, 5),
      //           ),
      //         ],
      //       ),
      //       child: Row(
      //         children: [
      //           ClipRRect(
      //             borderRadius: BorderRadius.only(
      //               topLeft: Radius.circular(14.0),
      //               bottomLeft: Radius.circular(14.0),
      //             ),
      //             child: Image.network(
      //               "https://images.pexels.com/photos/1805053/pexels-photo-1805053.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      //               height: 120,
      //               width: 120,
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           Expanded(
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   "Informe de actividades",
      //                   style: GoogleFonts.manrope(
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 16.0,
      //                   ),
      //                 ),
      //                 Text(
      //                   "20/01/2023 10:04 am",
      //                   style: GoogleFonts.manrope(
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 13.0,
      //                   ),
      //                 ),
      //                 Text(
      //                   "Se tuvo que actualizar el dominio de la aplicación web por que no se pago a tiempo",
      //                   style: GoogleFonts.manrope(
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 14.0,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ); //Si no se especifica un itemCount, se generara infinitamente este widget
      //   },
      // ),
      body: ListView.builder(
        itemCount: superhero.length,
        itemBuilder: (BuildContext context, int index) {
          return MyItemListWidget(
            data: superhero[index],
            // image: superhero[index]["image"].toString(),
            // alias: superhero[index]["superhero"].toString(),
            // name: superhero[index]["alter_ego"].toString(),
            // firstappearance: superhero[index]["first_appearance"].toString());
          );
        },
      ),
    );
  }
}

class MyItemListWidget extends StatelessWidget {
  Map<String, dynamic> data;

  MyItemListWidget({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.3),
            offset: Offset(4, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14.0),
              bottomLeft: Radius.circular(14.0),
            ),
            child: Image.network(
              data["image"],
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["superhero"],
                    style: GoogleFonts.manrope(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    data["alter_ego"],
                    style: GoogleFonts.manrope(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    data["first_appearance"],
                    style: GoogleFonts.manrope(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "More Info",
                        style: GoogleFonts.manrope(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
