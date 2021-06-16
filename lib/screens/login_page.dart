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

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/1.jpg'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Welcome $name',
              style: TextStyle(
                fontSize: 40,
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
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'password',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        changeButton = !changeButton;
                      });
                      Future.delayed(
                          Duration(seconds: 3),
                          () => Navigator.pushNamed(
                              context, MyRoutes.homepageRoute));
                    },
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                        shape:
                            changeButton ? BoxShape.circle : BoxShape.rectangle,
                        // borderRadius: BorderRadius.circular(8),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homepageRoute);
                  //   },
                  //   child: Text('Login'),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
