import 'package:flutter/material.dart';
import 'package:flutter_project_model/datapassing.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final email = TextEditingController();
  final password = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'FORM',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: email,
            decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                labelText: 'Email',
                hintText: 'Enter your Email',
                hintStyle: TextStyle(color: Colors.black)),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: password,
            decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                labelText: 'Password',
                hintText: 'Enter your Password',
                hintStyle: TextStyle(color: Colors.black)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                var a = email.text;
                var c = password.text;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Datapassing(
                              data3: a,
                              data4: c,
                            )));
              },
              child: const Text(
                'LOGIN',

              ))
        ],
      ),
    );
  }
}
