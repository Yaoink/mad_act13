import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "/services/auth_service.dart";

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome, ${_authService.currentUser?.email ?? 'No user'}",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}