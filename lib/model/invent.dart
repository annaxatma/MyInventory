import 'package:equatable/equatable.dart';

import 'itemdata.dart';

class Invent extends Equatable {
  final bool? status;
  final List<ItemData>? data;

  const Invent({this.status, this.data});

  factory Invent.fromJson(Map<String, dynamic> json) => Invent(
        status: json['status'] as bool?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => ItemData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, data];
}
