import 'package:flutter/material.dart';
import 'package:fyp/home_page.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _formKey = GlobalKey<FormState>();

  String firstName = '';
  String lastName = '';
  String address1 = '';
  String address2 = '';

  String email = '';
  String password = '';
  String error = '';
  String phone = '';

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
            Colors.deepOrange,
            Colors.deepOrangeAccent,
            Colors.orangeAccent,
            Colors.white,
          ]),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                SizedBox(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(children: <Widget>[
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.purple,
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(color: (Colors.purple[200])!),
                            )),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter your First Name",
                                  hintStyle:
                                      TextStyle(color: Colors.purple[200]),
                                  border: InputBorder.none),
                              validator: (_fnameValue) {
                                if (_fnameValue!.isEmpty) {
                                  return 'Please Enter Email';
                                }

                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(color: (Colors.purple[200])!),
                            )),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter your Last Name",
                                  hintStyle:
                                      TextStyle(color: Colors.purple[200]),
                                  border: InputBorder.none),
                              validator: (_lnameValue) {
                                if (_lnameValue!.isEmpty) {
                                  return 'Please Enter Last Name';
                                }

                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(color: (Colors.purple[200])!),
                            )),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter your Email",
                                  hintStyle:
                                      TextStyle(color: Colors.purple[200]),
                                  border: InputBorder.none),
                              validator: (_emailValue) {
                                if (_emailValue!.isEmpty) {
                                  return 'Please Enter Email';
                                } else if (_emailValue.contains('@') != false) {
                                  return "Enter a correct email";
                                }

                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(color: (Colors.purple[200])!),
                            )),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter a Password",
                                  hintStyle:
                                      TextStyle(color: Colors.purple[200]),
                                  border: InputBorder.none),
                              obscureText: true,
                              validator: (_passwordValue) => _passwordValue!
                                          .length <
                                      6
                                  ? 'Password should be longer than 6 characters'
                                  : null,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(color: (Colors.purple[200])!),
                            )),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Re-write your Password",
                                  hintStyle:
                                      TextStyle(color: Colors.purple[200]),
                                  border: InputBorder.none),
                              obscureText: true,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(color: (Colors.purple[200])!),
                            )),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter your Address",
                                  hintStyle:
                                      TextStyle(color: Colors.purple[200]),
                                  border: InputBorder.none),
                              validator: (_addressValue) {
                                if (_addressValue!.isEmpty) {
                                  return 'Please Enter Address';
                                }

                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: (Colors.purple[200])!),
                              )),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter your Phone Number",
                                    hintStyle:
                                        TextStyle(color: Colors.purple[200]),
                                    border: InputBorder.none),
                                validator: (_pnumberValue) {
                                  if (_pnumberValue!.isEmpty) {
                                    return 'Please Enter Phone Number';
                                  } else if (_pnumberValue.length > 10) {
                                    return "Enter a correct phone number";
                                  }
                                },
                              ),
                            ),
                          ),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        color: Colors.purple[800],
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
