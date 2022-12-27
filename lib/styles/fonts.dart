import 'package:flutter/material.dart';

class Estilosletra {
  final BuildContext context;
  Estilosletra(this.context);

  TextStyle get textGlobalDr {
    return const TextStyle(
        fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold);
  }
  
   TextStyle get bienvenido {
    return const TextStyle( 
        fontSize: 13, color: Colors.black,letterSpacing: 1 , fontFamily: 'rubik');
  }

  TextStyle get subTitleRegister {
    return const TextStyle(
        fontWeight: FontWeight.w400, color: Colors.black, fontSize: 16);
  }}