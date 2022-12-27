// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grupo5_proyecto_final/styles/fonts.dart';

class Aves extends StatelessWidget {
  const Aves({super.key});

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
                  child: Text('Razas de Aves',
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
                      child: Image.asset('assets/pe-01.jpg', width: 180)),
                  Text('Periquitos',
                      style: Estilosletra(context).textGlobalDr),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/pe-02.jpg', width: 180)),
                  Text('Cacatúa',
                      style: Estilosletra(context).textGlobalDr),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/pe-03.jpg', width: 180)),
                  Text('Loros',
                      style: Estilosletra(context).textGlobalDr),
                ],
              ),
              Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/pe-04.jpg', width: 180)),
                  Text('Gorrión',
                      style: Estilosletra(context).textGlobalDr),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/pe-05.jpg', width: 180)),
                  Text('Gallos',
                      style: Estilosletra(context).textGlobalDr),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Image.asset('assets/pe-06.jpg', width: 180)),
                  Text('Patos',
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
