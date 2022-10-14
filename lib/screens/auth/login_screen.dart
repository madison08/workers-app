// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workers/ColorManager.dart';
import 'package:workers/widgets/Mytextfield.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  login() {
    if (_formKey.currentState!.validate()) {
      print("suceess");
    }
  }

  emailValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Adresse email invalide';
    }

    return null;
  }

  passwordValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Mot de passe invalide';
    }

    return null;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.violetColor,
      body: Column(
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Connexion",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              width: double.infinity,
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Text(
                            "Bienvenue",
                            style: TextStyle(
                              color: ColorManager.secondColor,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Text(
                            "Salut, connectez-vous pour continuer !",
                            style: TextStyle(
                              color: ColorManager.greyColor,
                              // fontSize:
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 22.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            "Addresse mail",
                            style: TextStyle(
                              color: ColorManager.greyColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          child: MyTextField(
                            hintText: "Entrer votre addresse mail",
                            controller: _emailController,
                            validator: (val) => emailValidator(val),
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            "Mot de passe",
                            style: TextStyle(
                              color: ColorManager.greyColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          child: MyTextField(
                            hintText: "Entrer votre mot de passe",
                            validator: (value) => passwordValidator(value),
                            controller: _passwordController,
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Text(
                            "Mot de passe oubler ?",
                            style: TextStyle(
                              color: ColorManager.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.0,
                                  vertical: 15.0,
                                ),
                                primary: ColorManager.violetColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              onPressed: () {
                                login();
                              },
                              child: Text(
                                "Connexion",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Vous n'avez pas de compte?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            "Inscrivez-vous",
                            style: TextStyle(
                              color: ColorManager.violetColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
