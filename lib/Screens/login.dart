import 'package:flutter/material.dart';
import 'package:librabry_management_system_odoo/Repository/loginrepository.dart';
import 'package:librabry_management_system_odoo/Screens/Home%20Screen/home.dart';
import 'package:librabry_management_system_odoo/Util/util.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  final _emailID = TextEditingController();
  bool _showPassword = false;
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.elliptical(MediaQuery.of(context).size.width * 0.04,
                  MediaQuery.of(context).size.width * 0.04),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                ),
                TextField(
                  controller: _emailID,
                  decoration: const InputDecoration(
                    label: Text('Enter Email Id '),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                TextField(
                  obscureText: !_showPassword,
                  controller: _password,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                      label: const Text('Enter Password Id '),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
             TextButton(
  style: ButtonStyle(
    fixedSize: MaterialStateProperty.all(
      Size(
        MediaQuery.of(context).size.width * 0.8,
        MediaQuery.of(context).size.height * 0.09,
      ),
    ),
    shape: MaterialStateProperty.all(
      BeveledRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.elliptical(
            MediaQuery.of(context).size.width * 0.02,
            MediaQuery.of(context).size.width * 0.02,
          ),
        ),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(
      Color.fromARGB(255, 202, 212, 230),
    ),
  ),
  onPressed: () {
    if (_emailID.text == 'admin@gmail.com' && _password.text == 'admin') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: const <Widget>[
              Icon(Icons.error),
              SizedBox(width: 10),
              Text('Username Or Password Invalid'),
            ],
          ),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  },
  child: const Text(
    'Sign In',
    style: TextStyle(color: Colors.black, fontSize: 25),
  )
),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
