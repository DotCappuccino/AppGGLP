import 'package:flutter/material.dart';


class loginPage extends StatefulWidget {
  static String routeName = "/Login";
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    /*
    * Variaveis
    * */
    String _mail = "";
    String _password = "";

    double fieldWidth = MediaQuery.of(context).size.width * 0.6;
    double buttonHeight = MediaQuery.of(context).size.height * 0.05;
    double buttonWidth = MediaQuery.of(context).size.width * 0.4;

    var loginForm = ListView(
      children: [
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: const CircleAvatar(
                      radius: 48,
                      backgroundImage:
                          NetworkImage('https://picsum.photos/250?image=9'),
                    ),
                  ),
                  Container(
                    width: fieldWidth,
                    child: TextFormField(
                      onChanged: (value) => _mail = value,
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: fieldWidth,
                    child: TextFormField(
                      onChanged: (value) => _password = value,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(Icons.lock),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: buttonHeight,
                    width: buttonWidth,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(top: 10),
                      child: ElevatedButton(

                        child: const Text("Acessar"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    height: buttonHeight,
                    width: buttonWidth,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(top: 10),
                      child: ElevatedButton(
                        child: const Text("Registrar"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );

    return Scaffold(body: loginForm);
  }
}
