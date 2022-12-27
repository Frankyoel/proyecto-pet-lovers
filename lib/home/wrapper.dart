// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grupo5_proyecto_final/auth_services.dart';
import 'package:grupo5_proyecto_final/home/home_page.dart';
import 'package:grupo5_proyecto_final/home/login.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
@override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? Login() : Home1();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });}}