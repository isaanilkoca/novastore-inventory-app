import 'package:flutter/material.dart';
import 'home_view.dart';
import 'register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Icon(Icons.store_mall_directory, size: 80, color: Colors.indigo),
              const SizedBox(height: 20),
              const Text("NovaStore Yönetim", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              const TextField(decoration: InputDecoration(labelText: "Kullanıcı Adı", border: OutlineInputBorder())),
              const SizedBox(height: 15),
              const TextField(obscureText: true, decoration: InputDecoration(labelText: "Şifre", border: OutlineInputBorder())),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView())),
                  child: const Text("SİSTEME GİRİŞ"),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView())),
                child: const Text("Hesabın yok mu? Kayıt Ol"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}