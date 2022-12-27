// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grupo5_proyecto_final/home/login.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabajo final',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Login() ,
    );
  }
}
/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}*/

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthServicie>(
          create: (_)=> AuthServicie()),
      ],
      child: MaterialApp(
        title: 'Pet Lovers',
        debugShowCheckedModeBanner: false,
       initialRoute: '/',
       routes: {
        '/':(context) => Wrapper(),
        '/login':(context) => Login(),
        '/registrar':(context) => Registro(),
       },
      ),
    );
  }
}*/
