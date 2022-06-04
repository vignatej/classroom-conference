import 'package:classroom_conference/resources/auth_methods.dart';
import 'package:classroom_conference/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final AuthMethods _authMethods = AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 133, 224, 163),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "VIRTUAL CLASSROOM.",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          
          Padding(padding: EdgeInsets.symmetric(vertical: 38),
          child: Image.asset("assets/images/pictu.jpg")),
          CustomButton(
            text: 'Google sign in',
            onPressed: ()async{
              bool res = await _authMethods.signInWithGoogle(context);
              if(res){
                Navigator.pushNamed(context, '/home');
              }
            },)
        ],
      ),
    ); 
  }
}