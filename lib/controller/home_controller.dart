import 'package:client_footwear/models/product/product.dart';
import 'package:client_footwear/models/product_category/product_category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;
  late CollectionReference categoryCollection;

  List<Product> products = [];
  List<Product> productShowInUi = [];
  
  List<ProductCategory> productCategories = [];

  get categories => null;

  get filters => null;
  
  @override
  Future<void> onInit() async {
    // TODO: implement onInit

    productCollection = firestore.collection('products');
    categoryCollection = firestore.collection('category');
    await fetchProducts();
    super.onInit();

    await fetchCategory();
    super.onInit();
  }

  
  fetchProducts() async {
    try {
      QuerySnapshot productSnapshot = await productCollection.get();
      final List<Product> retrievedProducts = productSnapshot.docs.map((doc) => 
                  Product.fromJson(doc.data() as Map<String, dynamic>)).toList();
      
      products.clear();
      products.assignAll(retrievedProducts);
      productShowInUi.assignAll(products);
      Get.snackbar('Success', 'Product fetched successfully',colorText: Colors.green);
    }catch (e) {
      Get.snackbar('Error', e.toString(),colorText: Colors.red);
    }finally {
      update();
    }
  }
  fetchCategory() async {
    try {
      QuerySnapshot categorySnapshot = await categoryCollection.get();
      final List<ProductCategory> retrievedCategories = categorySnapshot.docs.map((doc) => 
                  ProductCategory.fromJson(doc.data() as Map<String, dynamic>)).toList();
      
      productCategories.clear();
      productCategories.assignAll(retrievedCategories);
      Get.snackbar('Success', 'Category fetched successfully',colorText: Colors.green);
    }catch (e) {
      Get.snackbar('Error', e.toString(),colorText: Colors.red);
    }finally {
      update();
    }
  }

  void filterProducts(List<String> selectedItems) {}

  void sortProducts(String? selected) {}

  filterByCategory(String category){
    productShowInUi.clear();
    productShowInUi=products.where((product)=> product.category == category).toList();
    update();
  }

  filterByBrand(List<String> brands){
    if(brands.isEmpty){
      productShowInUi=products;
    }else{
      List<String> lowerCaseBrands= brands.map((brand)=> brand.toLowerCase()).toList();
      productShowInUi=products.where((product) => lowerCaseBrands.contains(product.brand?.toLowerCase() ?? '')).toList();
    }
    update();
  }

  sortByPrice({required bool ascending}){
    List<Product> sortedProducts= List<Product>.from(productShowInUi);
    sortedProducts.sort((a, b) => ascending ? a.price!.compareTo(b.price!): b.price!.compareTo(a.price!));
    productShowInUi=sortedProducts;
    update();
  }
}



// import 'package:client_footwear/models/product/product.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeController extends GetxController{
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   late CollectionReference productCollection;

//   List<Product> products=[];
//    @override
//   Future<void> onInit() async {
//     productCollection = firestore.collection('products');
//     await fetchProducts();
//     super.onInit();
//   }

//   fetchProducts() async{
//     try{
//       QuerySnapshot productSnapshot=await productCollection.get();
//       final List<Product> retrievedProducts=productSnapshot.docs.map((doc)=> Product.fromJson(doc.data() as Map<String, dynamics>)).toList();
//       products.clear();
//       products.assignAll(retrievedProducts);
//       Get.snackbar('Success', 'Product fetch successfully', colorText: Colors.green);

//     }catch(e){
//       Get.snackbar('Error', e.toString(), colorText:Colors.red);
//       print(e);
//     }finally{
//       update();
//     }
//   }
// }