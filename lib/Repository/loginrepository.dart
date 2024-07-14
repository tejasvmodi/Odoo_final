import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:librabry_management_system_odoo/Model/loginmodel.dart';
import 'package:librabry_management_system_odoo/Screens/Home%20Screen/home.dart';
import 'package:librabry_management_system_odoo/Util/util.dart';

class LoginRepository {
  final String apiUrl = "https://odoo-combat-latest.onrender.com/api/v1";

  Future<void> loginUserWithNameEmailAndPassword(BuildContext context, String email, String password) async {
     
    try {
     log(email);
    log(password);
      final response = await http.post(
        Uri.parse("$apiUrl/auth/login"),
        body: LoginModel(username: email, password: password).toJson(),
       
        headers: {'Content-Type': 'application/json'},
      );
      
      log(response.body.toString());
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        showSnackkBar(
          message: 'Login successful',
          title: 'Success',
          icon: const Icon(Icons.check),
        );
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      } else if (response.statusCode == 500) {
       
         showSnackkBar(
          message: 'Username Or Password Invalid',
          title: 'error',
          icon: const Icon(Icons.error),
        );
      } else {
        
         showSnackkBar(
          message: 'Failed to login',
          title: 'error',
          icon: const Icon(Icons.error),
        );
      }
    } catch (e) {
        showSnackkBar(
          message: 'Failed to login$e',
          title: 'error',
          icon: const Icon(Icons.error),
        );
    }
  }
}
