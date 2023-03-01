import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_project/pages/anggota.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final account = [
    {'username': 'maldimz', 'password': 'dimas123'},
    {'username': 'juan', 'password': 'juan123'},
    {'username': 'maul', 'password': 'maul123'},
  ];

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Kelompok Tongkol',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Username'),
                    hintText: 'Input username',
                  ),
                  controller: _usernameController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                    hintText: 'Input password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {
                      var text = "";
                      var found = false;
                      // print(_usernameController.text);
                      // print(_passwordController.text);
                      for (var element in account) {
                        if (element['username'].toString() ==
                                _usernameController.text.toString() &&
                            element['password'].toString() ==
                                _passwordController.text.toString()) {
                          found = true;
                          break;
                        } else {
                          found = false;
                        }
                      }

                      if (found) {
                        text = 'Login berhasil!';
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnggotaPage()));
                      } else {
                        text = 'Login gagal!';
                      }
                      SnackBar snackBar = SnackBar(
                        content: Text(text),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
