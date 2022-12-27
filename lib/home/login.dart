// ignore_for_file: prefer_const_constructors
import 'package:grupo5_proyecto_final/home/registro.dart';
import 'package:provider/provider.dart';
import 'package:grupo5_proyecto_final/auth_services.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
      final TextEditingController emailpass = TextEditingController();
      final TextEditingController passwordpass = TextEditingController();
      final _formkey = GlobalKey<FormState>();
      final authServicie = Provider.of<AuthService>(context);

    return Scaffold(
     body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(''),),//Imagen de la veterinaria 
              
              Column(
                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Correo'),
                  const SizedBox(height: 15,),   
                  TextFormField(
                          controller: emailpass,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator:(value) {
                        if (value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
                          return 'Ingrese un correo Valido';
                        }} ,
                          decoration: InputDecoration(
                              hintText: 'Correo o Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7))),),

                  const SizedBox(height: 15,),
                  const Text('Contraseña'),
                  TextFormField(    
                    obscureText: _isObscure,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                      if (value==null || value.length <= 4){
                      return "Su contraseña debe tener 5 digitos";}},
                          controller: passwordpass,
                          decoration: InputDecoration(
                              hintText: 'Contraseña',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7)),
                                  suffixIcon: IconButton( 
                    onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(_isObscure
                              ? Icons.visibility_sharp
                              : Icons.visibility_off_rounded)
                     
                   ),)
                  ),
                    Center(
                     child: ElevatedButton(
                            style: BotonEstilo(),
                            onPressed: () async{(_formkey.currentState!.validate());
                                await authServicie.siginWithEmailAndPassword(emailpass.text, passwordpass.text);{Navigator.pop(context);}
                          }, child: const Text('Ingresar')),),

                  const SizedBox(height: 20,),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Registro(),));},
                      child: const Text('Quiero registrarme'))

                ],
              )
            ],
          ),
        ),
      )
    );
  }

  ButtonStyle BotonEstilo() => ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 50), backgroundColor: Colors.orange);
}

    