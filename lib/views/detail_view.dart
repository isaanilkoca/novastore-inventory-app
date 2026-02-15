import 'package:flutter/material.dart';
import '../models/product_model.dart';

class DetailView extends StatelessWidget {
  final Product product;
  const DetailView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ürün Detayı")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(child: Image.network(product.imageUrl, height: 120)),
            const SizedBox(height: 30),
            _infoTile("Ürün Adı", product.name, Icons.label),
            _infoTile("Fiyat", "${product.price} TL", Icons.monetization_on),
            _infoTile("Kategori", product.category, Icons.category),
            _infoTile("Seri No", product.serialNo, Icons.qr_code),
            _infoTile("Stok", "${product.stock} Adet", Icons.inventory),
          ],
        ),
      ),
    );
  }

  Widget _infoTile(String title, String val, IconData icon) {
    return ListTile(leading: Icon(icon, color: Colors.indigo), title: Text(title), subtitle: Text(val, style: const TextStyle(fontWeight: FontWeight.bold)));
  }
}