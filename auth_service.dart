import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';

class AuthService {
  // For simplicity, we'll use shared preferences to store user data
  // In a real app, you would use Firebase Auth or another backend

  Future<bool> login(String email, String password) async {
    // Simulate login validation
    if (email.contains('@') && password.length >= 6) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      await prefs.setString(
        'uid',
        'user_${DateTime.now().millisecondsSinceEpoch}',
      );
      await prefs.setString('username', email.split('@')[0]);
      return true;
    }
    return false;
  }

  Future<bool> register(String email, String password, String username) async {
    // Simulate registration
    if (email.contains('@') && password.length >= 6) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      await prefs.setString(
        'uid',
        'user_${DateTime.now().millisecondsSinceEpoch}',
      );
      await prefs.setString('username', username);
      return true;
    }
    return false;
  }

  Future<User?> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('email');
    final uid = prefs.getString('uid');
    final username = prefs.getString('username');

    if (email != null && uid != null && username != null) {
      return User(uid: uid, email: email, username: username);
    }
    return null;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
