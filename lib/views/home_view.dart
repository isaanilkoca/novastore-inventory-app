import 'package:flutter/material.dart';
import '../models/product_model.dart';
import 'detail_view.dart';
import 'login_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Product> _products = [
    Product(name: "Macbook Pro M3", price: "75.000", category: "Laptop"),
    Product(name: "iPhone 15 Pro", price: "65.000", category: "Telefon"),
  ];
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envanter Listesi'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginView())),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: const InputDecoration(labelText: "Ürün Adı")),
            TextField(controller: _priceController, decoration: const InputDecoration(labelText: "Fiyat")),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if(_nameController.text.isNotEmpty) {
                  setState(() {
                    _products.add(Product(name: _nameController.text, price: _priceController.text, category: "Yeni Ürün"));
                    _nameController.clear(); _priceController.clear();
                  });
                }
              },
              child: const Text("ENVANTERE EKLE"),
            ),
            const Divider(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.network(_products[index].imageUrl, width: 30),
                      title: Text(_products[index].name),
                      subtitle: Text("${_products[index].price} TL"),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(product: _products[index]))),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}