// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grupo5_proyecto_final/styles/fonts.dart';

class Gatos extends StatelessWidget {
  const Gatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[300],
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              color: Colors.orange,
              child: Center(
                  child: Text('Razas de Gatos',
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
                      child: Image.asset('assets/g-1.jpg', width: 180)),
                  Text('Abisinio',
                      style: Estilosletra(context).textGlobalDr),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/g-2.jpg', width: 180)),
                  Text('Americano',
                      style: Estilosletra(context).textGlobalDr),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/g-3.jpg', width: 180)),
                  Text('Asiático',
                      style: Estilosletra(context).textGlobalDr),
                ],
              ),
              Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/g-4.png', width: 180)),
                  Text('Azul ruso',
                      style: Estilosletra(context).textGlobalDr),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/g-5.jpeg', width: 180)),
                  Text('Balines',
                      style: Estilosletra(context).textGlobalDr),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/g-6.jpg', width: 180)),
                  Text('Bengalí',
                      style: Estilosletra(context).textGlobalDr),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
