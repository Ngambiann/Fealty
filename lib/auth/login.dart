import 'package:fealty/auth/signup.dart';
import 'package:fealty/views/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool hideText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(35.0),
      child:  Column(
            children: [
              const Text(
              "Welcome Back!",
              style: TextStyle(color: Colors.black87, fontSize: 36),
            ),
  TextField(
            controller: emailAddressController,
            decoration: InputDecoration(
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Homepage()));
              },
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.black87),
              )),
              const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           
            children:[
              const Text(
              "Don't have an account?",
              style: TextStyle(color: Colors.black),
            ),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Signup()));
            }, child: const Text("Signup"))
            ] ,
            
          ),
            ]
          ),
         
        
        
      
    ));
  }
}
