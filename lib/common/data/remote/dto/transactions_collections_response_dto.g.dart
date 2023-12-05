// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_collections_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionsCollectionsResponseDTOImpl
    _$$TransactionsCollectionsResponseDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$TransactionsCollectionsResponseDTOImpl(
          total: json['total'] as int?,
          documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => TransactionDocumentResponseDTO.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TransactionsCollectionsResponseDTOImplToJson(
        _$TransactionsCollectionsResponseDTOImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'documents': instance.documents,
    };
