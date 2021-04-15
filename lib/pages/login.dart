import 'package:coolods/homePage.dart';
import 'package:coolods/pages/signup.dart';
import 'package:flutter/material.dart';
/* import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; */

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /* final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = new FirebaseAuth.instanceFor();
  SharedPreferences preferences;
  bool loading = false;
  bool islogedin = false;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }

  void isSignedIn() async {
    setState(() {
      loading = true;
    });

    preferences = await SharedPreferences.getInstance();
    islogedin = await googleSignIn.isSignedIn();

    if (islogedin) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }

    setState(() {
      loading = false;
    });
  }

  Future handleSignIn() async {
    preferences = await SharedPreferences.getInstance();

    setState(() {
      loading = true;
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication; */

  /* FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    if (firebaseUser != null) {
      final QuerySnapshot result = await FirebaseFirestore.instance
          .collection('users')
          .where('id', isEqualTo: firebaseUser.uid)
          .get();
      final List<DocumentSnapshot> documents = result.docs;

      if (documents.length == 0) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(firebaseUser.uid)
            .set({
          'id': firebaseUser.uid,
          'username': firebaseUser.displayName,
          'profilePicture': firebaseUser.photoUrl,
        });

        await preferences.setString('id', firebaseUser.uid);
        await preferences.setString('username', firebaseUser.displayName);
        await preferences.setString('photoUrl', firebaseUser.displayName);
      } else {
        await preferences.setString('id', documents[0]['id']);
        await preferences.setString('username', documents[0]['username']);
        await preferences.setString('photoUrl', documents[0]['photoUrl']);
      }

      Fluttertoast.showToast(msg: 'Login was successful');
      setState(() {
        loading = false;
      });
    } else {} */
  //}

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

                  //====== LOGIN BUTTOM ========
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xFFffae00),
                      elevation: 0.2,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                              (route) => false);
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'FORGET PASSWORD',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 4.0, 4.0, 4.0),
                        child: Text(
                          "don't have an account? click here to",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUp()));
                          },
                          child: Text(
                            "SIGN UP!",
                            style: TextStyle(
                                color: Color(0xFFffae00),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0),
                          ),
                        ),
                      )
                    ],
                  ),

                  Divider(
                    color: Color(0xFFffae00),
                    endIndent: 0.0,
                  ),
                  Text(
                    'Other login in option',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),

                  //====== OTHER LOGIN BUTTOM ========
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 4.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.blue.shade900,
                      elevation: 0.2,
                      child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          height: 40.0,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 45.0),
                                child: Image.asset('assets/fb.png',
                                    height: 30.0,
                                    width: 30.0,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Log in with Facebook',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      elevation: 0.2,
                      child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          height: 40.0,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Image.asset(
                                  'assets/go1.png',
                                  height: 20.0,
                                  width: 20.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(
                                  'Log in with Google',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              )),
            ),
          ),
          /* Visibility(
            visible: loading ?? true,
            child: Container(
              alignment: Alignment.center,
              color: Colors.white.withOpacity(0.9),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFffae00)),
              ),
            ),
          ), */
        ],
      ),
    );
  }
}
