/*3. Question 3: E-commerce Order Management
Create a class Product with the following properties:

productId
name
price
Create another class Order with the following:

A list of Product objects
calculateTotal() method to calculate the total price of the order
Requirements:

Use encapsulation for properties in Product and Order.
Use object composition by including Product objects inside Order.*/
class Product {
  String? _name;
  int? _productId;
  double? _price;
  Product(this._name, this._price, this._productId);

  void set(String name,int productId,double price)
  {
    this._name=name;
    this._price=price;
    this._productId=productId;
  }

}
class Order {
final List<Product> products = [];
 void addProduct(Product product) {
    products.add(product);
  }
  
  
}
