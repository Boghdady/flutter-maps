import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _frmRegisterKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: _frmRegisterKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Must enter email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Passwoed',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Must enter email';
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  onPressed: btnLogin,
                  child: Text("Login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void btnLogin() {
    if (_frmRegisterKey.currentState.validate()) {
      print(_emailController.text);
      print(_passwordController.text);
    }
  }
}
