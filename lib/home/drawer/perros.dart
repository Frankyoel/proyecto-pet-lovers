// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grupo5_proyecto_final/styles/fonts.dart';

class Perros extends StatelessWidget {
  const Perros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.brown[300],
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                color: Colors.brown,
                child: Center(
                    child: Text('Razas de Perros',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50)))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5)),
                        child: Image.asset('assets/p-1.jpg', width: 180)),
                    Text('Basset Azul ',
                        style: Estilosletra(context).textGlobalDr),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5)),
                        child: Image.asset('assets/p-2.jpg', width: 180)),
                    Text('Basset Grifón',
                        style: Estilosletra(context).textGlobalDr),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5)),
                        child: Image.asset('assets/p-3.jpg', width: 180)),
                    Text('Basenji',
                        style: Estilosletra(context).textGlobalDr),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5)),
                        child: Image.asset('assets/p-4.jpg', width: 180)),
                    Text('Akita Japones',
                        style: Estilosletra(context).textGlobalDr),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5)),
                        child: Image.asset('assets/p-5.jpg', width: 180)),
                    Text('Afgano',
                        style: Estilosletra(context).textGlobalDr),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5)),
                        child: Image.asset('assets/p-6.jpg', width: 180)),
                    Text('Affenpinscher',
                        style: Estilosletra(context).textGlobalDr),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
