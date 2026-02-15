class Product {
  final String name;
  final String price;
  final String category;
  final String stock;
  final String serialNo;
  final String imageUrl; // Yeni eklendi

  Product({
    required this.name, 
    required this.price, 
    required this.category,
    this.stock = "24",
    this.serialNo = "NS-2026-001",
    // Hocam, varsayılan bir envanter görseli atadım:
    this.imageUrl = "https://cdn-icons-png.flaticon.com/512/679/679821.png", 
  });
}