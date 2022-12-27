import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class Generalidades extends StatelessWidget {
  const Generalidades({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primera parte del texto con su imagen debajo
        Container(
          color: Colors.orange[200],
          child: Text(
            'Las mascotas pueden disminuir el estrés y la sensación de soledad, mejorar la salud del corazón e, incluso, ayudar a los niños con sus habilidades emocionales y sociales. Así lo asegura el NIH (National Institutes of Health), grupo de instituciones del gobierno de Estados Unidos dedicado a la investigación médica. Si estás dudando en tener una mascota, después de leer todos los beneficios que ofrecen tus dudas se disiparán.',
            textAlign: TextAlign.justify,
           // style: GoogleFonts.dosis(fontSize: 20),
          ),
        ),
        Image(image: AssetImage('assets/i-generalidades.jpg')),
        // Segunda parte texto
        Container(
          color: Colors.orange[300],
          child: Text(
            '¡Puedes ayudar adoptando una mascota abandonada y darle un nuevo hogar!',
            textAlign: TextAlign.center,
         //style: GoogleFonts.dosis(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        // Tercera parte colocando una imagen con texto a su costado
        Row(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.brown[300]),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/i-generalidades-02.jpg')),
                  Image(image: AssetImage('assets/i-generalidades-03.jpg')),
                ],
              ),
            )
          ],
        ),
        // Ultima linea de texto
        Container(
          color: Colors.orange[900],
          child: Text(
            '¡Recuerda llevar al veterninario a tus mascotas!',
            textAlign: TextAlign.center,
           // style: GoogleFonts.dosis(
              //  fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
