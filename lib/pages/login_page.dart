// import 'dart:convert';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_demo/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/Messenger-pana.png",
                width: 300, height: 300, fit: BoxFit.fill),
            const SizedBox(
              height: 10.0,
            ),
            Text("Welcome $name",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username ",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    // showCursor: true,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });
                      await Future.delayed(const Duration(
                        seconds: 1,
                      ));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                        duration: const Duration(
                          seconds: 1,
                        ),
                        alignment: Alignment.center,
                        height: 45,
                        width: changebutton ? 50 : 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: changebutton
                                ? (Colors.orange)
                                : Colors.deepPurple),
                        child: changebutton
                            ? const Icon(Icons.done)
                            : const Text("Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: const ButtonStyle(
                  //       backgroundColor: MaterialStatePropertyAll(
                  //           Color.fromARGB(255, 161, 59, 220))),
                  //   child: const Text("Login"),
                  // )
                ],
              ),
            )
          ],
        ));
  }
}
