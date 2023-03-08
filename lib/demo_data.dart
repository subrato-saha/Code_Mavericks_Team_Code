class DemoData {
  String imageUrl, productName, price;
  DemoData(this.imageUrl, this.productName, this.price);
  static List<DemoData> alldata() {
    return [
      DemoData("imageUrl", "productName", "price"),
      DemoData("imageUrl", "productName", "price"),
      DemoData("imageUrl", "productName", "price"),
    ];
  }
}
