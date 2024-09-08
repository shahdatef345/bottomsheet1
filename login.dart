import 'package:flutter/material.dart';

import '../homepage/homepage.dart';
import '../usercontroller/usercontroller.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();
 final _confirmpasswordController=TextEditingController();
 final _courseController=TextEditingController();

  final _userController = UserController();

  void _submit() {
    if (_formKey.currentState!.validate() ?? false) {
      final user = _userController.createUser(
          _usernameController.text, _passwordController.text);
      print("Login as ${user.username}");
      Navigator.pop(context);
    } else {
      print("Login Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        elevation: 20.0,
        color: Color(0xFFFFECAA),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const Row(
                  children: [
                    const Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        Text("Hello...",
                          style: TextStyle(
                            fontSize: 15,
                              fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),

                          textAlign: TextAlign.start,
                        ),
         SizedBox(
          height: 15,
         ),
         Text("Register",
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(

                    decoration: const InputDecoration(hintText: "Username/email",
                      labelText: "username/Email",
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        border: OutlineInputBorder()

                    ),

                    controller: _usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Username/email is required";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: "Course",
                      labelText: "Course",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(),),
                    controller: _courseController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "course is required";
                      }
                      return null;
                    },
                  ),
                ),

                SizedBox(
                    height: 20
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: "Password",
                      labelText: "password",
                      suffixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),),
                    controller: _passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: " Confirm Password",
                        labelText: "Confirm Password",
                        suffixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder()
                    ),
                    controller: _confirmpasswordController,
                    obscureText: true,
                    validator: (value){
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      }
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                 ElevatedButton(onPressed: _submit, child: const Text("Register",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFFDE69)
                  ),
                ),

                  style: ElevatedButton.styleFrom(
                    primary: Color(0XFF050522),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),

                    ),
                  ),
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have account? "),
                    TextButton(onPressed: (){}, child:const Text("Login",
                      style: TextStyle(
                        color: Color(0xFFEF5858)
                      ),
                    ))

                  ],
                )


              ],
            )
        ),
      ),
    );
  }
}