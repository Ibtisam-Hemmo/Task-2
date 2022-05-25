import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'products.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                    validator: (value) {
                      RegExp regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      return regex.hasMatch(value!)
                          ? null
                          : 'Enter email as example@gmail.com format ';
                    },
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    controller: emailController,
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your email',
                    )),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This is required';
                      }
                      return null;
                    },
                    obscureText: true,
                    textAlign: TextAlign.center,
                    controller: passwordController,
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter your password.')),
                SizedBox(
                  height: 24.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      // FirebaseAuth.instance
                      //     .signInWithEmailAndPassword(
                      //         email: emailController.text,
                      //         password: passwordController.text)
                      //     .then((value) => Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => Product())))
                      //     .onError((error, stackTrace) => print(error));

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Product()));
                    }
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const kTextFieldDecoration = InputDecoration(
    hintText: 'Enter a value',
    hintStyle: TextStyle(color: Colors.grey),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ));
