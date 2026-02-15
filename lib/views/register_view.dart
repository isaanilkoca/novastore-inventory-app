import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yeni Personel Kaydı")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Icon(Icons.person_add, size: 80, color: Colors.indigo),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Ad Soyad", border: OutlineInputBorder())),
            const SizedBox(height: 15),
            const TextField(decoration: InputDecoration(labelText: "E-posta", border: OutlineInputBorder())),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Personel Kaydı Başarılı!")));
                },
                child: const Text("KAYIT OL"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}