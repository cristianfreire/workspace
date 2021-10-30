import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fazer o Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: _body(context),
      ),
    );
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Informe o login";
    }
    return null;
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Informe a senha";
    }
    return null;
  }

  _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          textFormFieldLogin(),
          textFormFieldSenha(),
          containerButton(context)
        ],
      ),
    );
  }

  textFormFieldLogin() {
    return TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            labelText: "Login",
            labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
            hintText: "Informe o login"));
  }

  textFormFieldSenha() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          labelText: "Senha",
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          hintText: "Informe a senha"),
    );
  }

  containerButton(BuildContext context) {
    return Container(
      height: 40.0,
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        color: Colors.blue,
        child: Text("Login",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
        onPressed: () {
          //_onClickLogin(context);
        },
      ),
    );
  }
/*
_onClickLogin(BuildContext context) {
  if (login.isEmpty || senha.isEmpty) {
    showAboutDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text("Erro"),
            content: Text("Login e/ou Senha Inválido(s)"),
            actions: <Widget>[
              FlatButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ]);
      },
    );
  }
}
*/
}
