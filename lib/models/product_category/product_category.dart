import 'package:json_annotation/json_annotation.dart';
part 'product_category.g.dart';

@JsonSerializable()
class ProductCategory {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "number")
  int? number;


  ProductCategory({
    this.id,
    this.name,
    this.number,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) => _$ProductCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);

  fromJson(Map<String, dynamic> data) {}
}