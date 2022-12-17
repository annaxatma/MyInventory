import 'package:equatable/equatable.dart';

class ItemData extends Equatable {
  final String? itemId;
  final String? itemName;
  final String? itemQuantity;
  final String? itemDescription;

  const ItemData({
    this.itemId,
    this.itemName,
    this.itemQuantity,
    this.itemDescription,
  });

  factory ItemData.fromJson(Map<String, dynamic> json) => ItemData(
        itemId: json['item_id'] as String?,
        itemName: json['item_name'] as String?,
        itemQuantity: json['item_quantity'] as String?,
        itemDescription: json['item_description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'item_id': itemId,
        'item_name': itemName,
        'item_quantity': itemQuantity,
        'item_description': itemDescription,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      itemId,
      itemName,
      itemQuantity,
      itemDescription,
    ];
  }
}
