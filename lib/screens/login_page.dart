import 'package:coco_catalog/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  void moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = !changeButton;
      });
      await Future.delayed(Duration(seconds: 3),
          () => Navigator.pushNamed(context, MyRoutes.homepageRoute));
      setState(() {
        changeButton = !changeButton;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset('assets/images/hey.png'),
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter username',
                        labelText: 'username',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          labelText: 'password',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password cannot be empty";
                          } else if (value.length < 6) {
                            return "password should have minimum 6 letters";
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          height: 50,
                          width: changeButton ? 80 : 150,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'Signup',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
