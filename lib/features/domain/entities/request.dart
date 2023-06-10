// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'location.dart';

class Request extends Equatable {
  final String id;
  final int gallons;
  final Location? requesterLocation;
  final Location? serviceLocation;

  const Request({
    required this.id,
    required this.gallons,
    this.requesterLocation,
    this.serviceLocation,
  });

  @override
  List<Object?> get props => [id, gallons, requesterLocation, serviceLocation];

  Request copyWith({
    String? id,
    int? gallons,
    Location? requesterLocation,
    Location? serviceLocation,
  }) {
    return Request(
      id: id ?? this.id,
      gallons: gallons ?? this.gallons,
      requesterLocation: requesterLocation ?? this.requesterLocation,
      serviceLocation: serviceLocation ?? this.serviceLocation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'gallons': gallons,
      'requesterLocation': requesterLocation?.toMap(),
      'serviceLocation': serviceLocation?.toMap(),
    };
  }

  factory Request.fromMap(Map<String, dynamic> map) => Request(
        id: map['id'] as String,
        gallons: map['gallons'] as int,
        requesterLocation: map['requesterLocation'] != null ? Location.fromMap(map['requesterLocation'] as Map<String, dynamic>) : null,
        serviceLocation: map['serviceLocation'] != null ? Location.fromMap(map['serviceLocation'] as Map<String, dynamic>) : null,
      );

  String toJson() => json.encode(toMap());

  factory Request.fromJson(String source) => Request.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
