// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return BookingModel(
    id: json['id'] as int,
    status: json['status'] as String,
    createDate: json['createDate'] == null
        ? null
        : DateTime.parse(json['createDate'] as String),
    customerAccount: json['customerAccount'] == null
        ? null
        : ProviderModel.fromJson(
            json['customerAccount'] as Map<String, dynamic>),
    beautyArtistAccount: json['beautyArtistAccount'] == null
        ? null
        : ProviderModel.fromJson(
            json['beautyArtistAccount'] as Map<String, dynamic>),
    note: json['note'] as String,
    endAddress: json['endAddress'] as String,
    beginAddress: json['beginAddress'] as String,
    totalFee: (json['totalFee'] as num)?.toDouble(),
    transportFee: (json['transportFee'] as num)?.toDouble(),
  )..bookingDetails = (json['bookingDetails'] as List)
      ?.map((e) => e == null
          ? null
          : BookingDetailModel.fromJson(e as Map<String, dynamic>))
      ?.toList();
}

Map<String, dynamic> _$BookingModelToJson(BookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createDate': instance.createDate?.toIso8601String(),
      'customerAccount': instance.customerAccount,
      'beautyArtistAccount': instance.beautyArtistAccount,
      'note': instance.note,
      'endAddress': instance.endAddress,
      'beginAddress': instance.beginAddress,
      'totalFee': instance.totalFee,
      'transportFee': instance.transportFee,
      'bookingDetails': instance.bookingDetails,
    };
