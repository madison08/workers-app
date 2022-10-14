// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workers/ColorManager.dart';
import 'package:workers/widgets/Mytextfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _completeNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  signup() {
    if (_formKey.currentState!.validate()) {
      print("suceess");
    }
  }

  completeNameValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Adresse email invalide';
    }

    return null;
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

    _completeNameController.dispose();
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
                    "Inscription",
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
              // width: double.infinity,
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
                            "Creer un compte !",
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
                            "Nom complet",
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
                            hintText: "Entrer votre nom complet",
                            controller: _completeNameController,
                            validator: (value) => completeNameValidator(value),
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
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
                            validator: (value) => emailValidator(value),
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
                            controller: _passwordController,
                            validator: (value) => passwordValidator(value),
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
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
                                signup();
                              },
                              child: Text(
                                "S'inscrire",
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
                        Text("Vous avez un compte?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            "Connectez-vous",
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
