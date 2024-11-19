import 'package:client_footwear/models/product/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;
  
  List<Product> products = [];

  get categories => null;

  get filters => null;
  
  @override
  Future<void> onInit() async {
    // TODO: implement onInit

    productCollection = firestore.collection('products');
    await fetchProducts();
    super.onInit();
  }

  
  fetchProducts() async {
    try {
      QuerySnapshot productSnapshot = await productCollection.get();
      final List<Product> retrievedProducts = productSnapshot.docs.map((doc) => 
                  Product.fromJson(doc.data() as Map<String, dynamic>)).toList();
      
      products.clear();
      products.assignAll(retrievedProducts);
      Get.snackbar('Success', 'Product fetched successfully',colorText: Colors.green);
    }catch (e) {
      Get.snackbar('Error', e.toString(),colorText: Colors.red);
    }finally {
      update();
    }
  }

  void filterProducts(List<String> selectedItems) {}

  void sortProducts(String? selected) {}

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