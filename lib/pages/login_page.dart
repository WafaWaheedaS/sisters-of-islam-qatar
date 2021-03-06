import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/constants.dart';
import 'package:sisters_of_islam_qatar/pages/home_page.dart';
import 'package:sisters_of_islam_qatar/pages/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/sistersofislam-qa-02.png'),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'Your email',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = GestureDetector(
      child: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
        alignment: Alignment.center,
        child: Text(
          'LOG IN',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white70,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: kAppPrimaryColor,
        ),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      ),
    );

    final forgotPassword = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final signUp = FlatButton(
      child: Text(
        'Sign Up  | Forgot Password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUpPage()),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppPrimaryColor,
        title: Text(kAppName),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Center(
                child: Text(
                  kAppName,
                  style: TextStyle(
                      color: kAppPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            signUp,
          ],
        ),
      ),
    );
  }
}
