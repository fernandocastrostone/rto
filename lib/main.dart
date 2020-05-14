import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Resolve Tudo Online", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Row(children: <Widget>[
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 8,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "E-mail"),
                    )),
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ]),
              Row(children: <Widget>[
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 8,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Senha"),
                      obscureText: true,
                    )),
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: RaisedButton(
                          child: Text(
                            "Acessar",
                            style: (TextStyle(color: Colors.white)),
                          ),
                          color: Colors.black,
                          onPressed: () {})),
                  RaisedButton(
                      child: Text(
                        "Cadastre-se",
                        style: (TextStyle(color: Colors.white)),
                      ),
                      color: Colors.blue,
                      onPressed: () {}),
                ],
              ),
          Padding(
            padding: EdgeInsets.only(
                top: 50.0, bottom: 10.0, left: 10.0, right: 10.0),
          child: Image.asset(
            "images/login-fb.png",
            scale: 3,
          ),)
              ,
              Image.asset(
                "images/login-google.png",
                scale: 2,
              )
            ],
          )),
    );
  }
}
