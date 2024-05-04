import 'package:get/get.dart';
import '../model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    // 서버에서 데이터 가져와야함
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    var productData = [
      Product(
        id: 1,
        price: 30,
        description: 'some description about product',
        name: 'Mouse',
      ),
      Product(
        id: 2,
        price: 40,
        description: 'some description about product',
        name: 'Keyboard',
      ),
      Product(
        id: 3,
        price: 620,
        description: 'some description about product',
        name: 'Monitor',
      ),
      Product(
        id: 4,
        price: 80,
        description: 'some description about product',
        name: 'Ram',
      ),
      Product(
        id: 5,
        price: 550,
        description: 'some description about product',
        name: 'Speaker',
      ),
    ];
    products.assignAll(productData);
  }
}
