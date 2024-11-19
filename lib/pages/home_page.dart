import 'package:client_footwear/controller/home_controller.dart';
import 'package:client_footwear/pages/product_description_page.dart';
import 'package:client_footwear/widget/drop_down_btn.dart';
import 'package:client_footwear/widget/multi_select_drop_down.dart';
import 'package:client_footwear/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart'; // For GetStorage
import 'package:client_footwear/pages/login_page.dart'; // Import your LoginPage class
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<HomeController>(builder: (ctrl){
      return Scaffold(
      appBar: AppBar(
        title: Text('Footwear Store',
         style: TextStyle(
          fontWeight: FontWeight.bold,
         ),
         ),

         actions: [
          IconButton(onPressed: () {
            GetStorage box=GetStorage();
            box.erase();
            Get.offAll(LoginPage());

          },
          icon: Icon(Icons.logout))
         ],
      ),

      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(6),
                  child: Chip(label: Text('category')),
                );
            }),
          ),

          Row(
            children: [
              Flexible(
                child: DropdownBtn(
                  items: ['Rs: Low to High', 'Rs: High to Low'], 
                  selectedItemText: 'Sort',
                  onSelected: (selected) {},
                ),
              ),
              Flexible(child: MultiSelectDropDown(items: ['item1', 'item2', 'item3'],
               onSelectionChanged: (selectedItems) {},
               )),
            ],
          ),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.8,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8
            ), 
            itemCount: ctrl.products.length,
            itemBuilder: (context, index) {
              return ProductCard(
                name: ctrl.products[index].name ?? 'No name', 
                imageUrl: ctrl.products[index].image??'url',
                price: ctrl.products[index].price?? 00, 
                offerTag: '20% off', 
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductDescriptionPage()),
                    );
                },
                );
            }),
          )

        ],
      ),
    );
    });
  }
}