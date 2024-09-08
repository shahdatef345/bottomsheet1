import 'package:flutter/material.dart';

class RegisterBottomSheet extends StatefulWidget {
  const RegisterBottomSheet({super.key});

  @override
  State<RegisterBottomSheet> createState() => _RegisterBottomSheetState();
}

class _RegisterBottomSheetState extends State<RegisterBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  double _age = 18;
  String _selectedGender = "Male";
  bool _receiveNewsletter = false;
  bool? _isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SingleChildScrollView(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          elevation: 20.0,
          color: Color(0xFFFFECAA),

          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Row(
                    children: [
                      const Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Text("Welcome Back...",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey
                            ),

                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                          SizedBox(
                            height:30,
                          )
                        ],

                      ),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(Icons.close,
                        color: Color(0xFFEF5858),
                      )
                    ],
                  ),
                  TextFormField(
                    controller: TextEditingController(),

                    decoration: const InputDecoration(
                        hintText: "Username", border: OutlineInputBorder(),
                      labelText: "UserName",
                      suffixIcon: Icon(Icons.lock),
                    ),

                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                        hintText: "Password", border: OutlineInputBorder(),
                      labelText: "Password",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [

                    ],
                  ),
                  Row(
                    children: [

                    ],
                  ),


                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(

                          value: _isTermsAccepted,
                          
                          onChanged: (val) {
                            setState(() {
                              _isTermsAccepted = val;
                            });
                          }),
                      InkWell(
                        child: Text("Remember me",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                          ),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      TextButton(onPressed: (){}, child:const Text("Forget Password?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: !(_isTermsAccepted == false) ||
                              _isTermsAccepted == null
                              ? () {
                            Navigator.of(context).pop();
                          }
                              : null,
                          child: const Text("Register")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account?  ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      TextButton(onPressed: (){}, child:const Text("Registert?",
                        style: TextStyle(
                          fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFEF5858)
                        ),
                      ))

                    ],
                  )


                ],


              )
          ),
        ),
      ),
    );
  }
}