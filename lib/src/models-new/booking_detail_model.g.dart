// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingDetailModel _$BookingDetailModelFromJson(Map<String, dynamic> json) {
  return BookingDetailModel(
    id: json['id'] as int,
    quantity: json['quantity'] as int,
    bookingId: json['bookingId'] as int,
    serviceId: json['serviceId'] as int,
    servicePrice: (json['servicePrice'] as num)?.toDouble(),
    serviceName: json['serviceName'] as String,
  );
}

Map<String, dynamic> _$BookingDetailModelToJson(BookingDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'bookingId': instance.bookingId,
      'serviceId': instance.serviceId,
      'servicePrice': instance.servicePrice,
      'serviceName': instance.serviceName,
    };