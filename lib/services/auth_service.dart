import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier{

  final String _baseUrl = 'identitytoolkit.googleapis.com';
  final String _firebaseToken = 'AIzaSyCaQhjiPmZBkk9T22kstir0J2NVmzP766A';


  Future<String?> createUser( String email, String password) async{

    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };

    final url = Uri.https(_baseUrl, '/v1/accounts:signUp',{
      'key': _firebaseToken
    });
   final resp = await http.post(url, body: json.encode(authData));
   final Map<String, dynamic> decodedResp = jsonDecode(resp.body);

   if(decodedResp.containsKey('idToken')){
   // return decodedResp['idToken'];
   return null;
   }else{
      return decodedResp['error']['message'];
   }

  }

  Future<String?> login( String email, String password) async{

    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };

    final url = Uri.https(_baseUrl, '/v1/accounts:signInWithPassword',{
      'key': _firebaseToken
    });
   final resp = await http.post(url, body: json.encode(authData));
   final Map<String, dynamic> decodedResp = jsonDecode(resp.body);

  if(decodedResp.containsKey('idToken')){
   // return decodedResp['idToken'];
 return null;
   }else{
    return decodedResp['error']['message'];
  }

  }

}