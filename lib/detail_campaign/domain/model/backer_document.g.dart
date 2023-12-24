// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backer_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackerDocumentImpl _$$BackerDocumentImplFromJson(Map<String, dynamic> json) =>
    _$BackerDocumentImpl(
      userName: json['userName'] as String?,
      amount: json['amount'] as int?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$BackerDocumentImplToJson(
        _$BackerDocumentImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'amount': instance.amount,
      'createdAt': instance.createdAt,
    };
