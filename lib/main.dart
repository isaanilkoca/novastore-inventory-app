import 'package:flutter/material.dart';
import 'views/login_view.dart';

void main() => runApp(const NovaStoreApp());

class NovaStoreApp extends StatelessWidget {
  const NovaStoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: true),
      home: const LoginView(),
    );
  }
}