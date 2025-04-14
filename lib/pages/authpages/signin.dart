import 'package:fealty/components/buttons/authpgsbuttons.dart';
import 'package:fealty/components/textfields/authtextfields.dart';
import 'package:fealty/components/texts/authheaders.dart';
import 'package:fealty/pages/authpages/signup.dart';
import 'package:fealty/pages/mainpages/homepage.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _LoginState();
}

class _LoginState extends State<Signin> {
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backgroundart2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//header text
          const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Authheaders(textcontent: "Welcome"),
              Authheaders(textcontent: "Back!"),
            ],
          ),
          const SizedBox(
            height: 130,
          ),
//Email entry box
          Authtextfields(
              controller: emailAddressController, hintText: "Email address"),
          const SizedBox(
            height: 25,
          ),
//Password entry box
          Authtextfields(controller: passwordController, hintText: "Password"),
          const SizedBox(
            height: 55,
          ),
//Send code button
          Authpgsbuttons(
              buttonname: "Send code",
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Homepage()));
              }),
          const SizedBox(
            height: 10,
          ),
//Sign up optiion
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.black),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Signup()));
                  },
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900),
                  ))
            ],
          ),
        ]),
      ]),
    ));
  }
}
