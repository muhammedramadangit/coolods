import 'package:coolods/pages/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String groupValue = 'male';
  String gender;
  bool hidePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/back3.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 35.0),
            child: Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/logo.png',
                height: 200.0,
                width: 200.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
              child: Form(
                  child: ListView(
                children: [
                  //====== Full name TEXT FORM ========
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white.withOpacity(0.5),
                      elevation: 0.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Full name',
                            hintStyle: TextStyle(),
                            icon: Icon(
                              Icons.person,
                              color: Colors.black.withOpacity(0.7),
                              size: 20.0,
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'The name field cannot be empty';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),

                  //====== E-MAIL TEXT FORM ========
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white.withOpacity(0.5),
                      elevation: 0.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(),
                            icon: Icon(
                              Icons.email,
                              color: Colors.black.withOpacity(0.7),
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //====== GENDER TEXT FORM ========
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white.withOpacity(0.5),
                      elevation: 0.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: ListTile(
                              title: Text(
                                'male',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              leading: Radio(
                                  activeColor: Color(0xFFffae00),
                                  value: 'male',
                                  groupValue: groupValue,
                                  onChanged: (e) => valueChanged(e)),
                            )),
                            Expanded(
                                child: ListTile(
                              title: Text(
                                'female',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              leading: Radio(
                                  activeColor: Color(0xFFffae00),
                                  value: 'female',
                                  groupValue: groupValue,
                                  onChanged: (e) => valueChanged(e)),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),

                  //====== PASSWORD TEXT FORM ========
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white.withOpacity(0.5),
                      elevation: 0.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextFormField(
                          obscureText: hidePass,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black.withOpacity(0.7),
                              size: 20.0,
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'The password field cannot be empty';
                            } else if (value.length < 6) {
                              return 'The password has to ba at least 6 characters long';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),

                  //====== PASSWORD TEXT FORM ========
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white.withOpacity(0.5),
                      elevation: 0.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm password',
                            hintStyle: TextStyle(),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black.withOpacity(0.7),
                              size: 20.0,
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'The password field cannot be empty';
                            } else if (value.length < 6) {
                              return 'The password has to ba at least 6 characters long';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),

                  //====== SIGN UP BUTTOM ========
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xFFffae00),
                      elevation: 0.2,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFffae00),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }

  valueChanged(e) {
    setState(() {
      if (e == 'male') {
        groupValue = e;
        gender = e;
      } else if (e == 'female') {
        groupValue = e;
        gender = e;
      }
    });
  }
}
