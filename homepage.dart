
import 'package:flutter/material.dart';

import '../widget/login.dart';
import '../widget/register.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0XFF050522),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  'lib/assets/Illustration.jpg',
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 40,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Color(0xFFEF5858),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            const Text.rich(
              TextSpan(
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: ' Lorem ipsum dolor sit amet ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ),
                  const Text.rich(
                    TextSpan(
                      text: 'Hello', // default text style
                      children: <TextSpan>[
                        TextSpan(text: ' consectetur adipiscing elit, ', style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      text: 'Hello', // default text style
                      children: <TextSpan>[
                        TextSpan(text: ' sed do eiusmod ', style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFDE69),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),                  onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => const LoginBottomSheet());
                          },
                          child: const Text("Create Account",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20

                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0XFF050522),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Color(0xFFFFDE69),
                                width: 5,
                              )
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => const RegisterBottomSheet());
                          },
                          child: const Text("Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold

                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
              "All Right Reserved @2021",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
          ),
        );


  }
}