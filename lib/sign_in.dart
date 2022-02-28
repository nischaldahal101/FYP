import 'package:flutter/material.dart';
import 'package:fyp/home_page.dart';
import 'package:fyp/sign_up.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  Widget horizontalLine() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: 70,
          height: 1.0,
          color: Colors.grey[300],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color(0xff107163),
              Colors.white,
            ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/family.png',
                        height: 200,
                        width: 200,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            children: <Widget>[
                              const SizedBox(height: 40),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color(0xff107163),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ],
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(
                                            color: (Colors.purple[200])!),
                                      )),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            hintText: "Enter your Email",
                                            hintStyle: TextStyle(
                                                color: Color(0xff107163)),
                                            border: InputBorder.none),
                                        validator: (_emailValue) {
                                          if (_emailValue!.isEmpty) {
                                            return 'Please Enter Email';
                                          } else if (_emailValue
                                                  .contains('@') !=
                                              false) {
                                            return "Enter a correct email";
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            hintText: "Enter your Password",
                                            hintStyle: TextStyle(
                                                color: Color(0xff107163)),
                                            border: InputBorder.none),
                                        obscureText: true,
                                        validator: (_passwordValue) =>
                                            _passwordValue!.length < 6
                                                ? 'Password should be longer than 6 characters'
                                                : null,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                height: 40,
                                width: 200,
                                child: MaterialButton(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  color: Color(0xff107163),
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'New User? ',
                                    style: TextStyle(color: Colors.grey[800]),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => signUp()));
                                    },
                                    child: const Text(
                                      'Register',
                                      style: TextStyle(
                                          color: Color(0xff107163),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ))),
            ],
          ),
        ));
  }
}
