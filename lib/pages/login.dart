import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
/*                    child: Container(
            Container(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    // ignore: sized_box_for_whitespace
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4.5,
                      child: Image.asset(
                        'assets/img/logo-estetoscopio.png',
                      ),
                    ),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.2, 1],
                  colors: [
                    Color(0xff0050d4),
                    Color(0xff247dff),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
            ),
 */
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 200,
                ),
                Column(
                  children: [
/*                   
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'E-mail:',
                          icon: Icon(Icons.person),
                          hintText: 'What do people call you?',
                        ),
                        //                       onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                        //                      },
//                        validator: (String? value) {
//                          return (value != null && value.contains('@'))
                        //                             ? 'Do not use the @ char.'
                        //                            : null;
                        //                      },
                      ),
                    ),
*/
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          // border: OutlineInputBorder(), // borda externa
                          labelText: 'Senha:',
                          icon: Icon(Icons.lock_outline),
                          hintText: 'Digite sua',
                        ),
                        //                       onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                        //                       },
                        //                       validator: (String? value) {
                        //                         return (value != null && value.contains('@'))
                        //                            ? 'Do not use the @ char.'
                        //                            : null;
                        //                      },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        border: Border.all(
                            color: Colors.blue,
                            width: 4.0,
                            style: BorderStyle.solid),
                        // color: Color(0xFFBFBFBF),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Futura',
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      child: const Text(
                        'Recuperar senha',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Futura',
                          color: Colors.grey,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
