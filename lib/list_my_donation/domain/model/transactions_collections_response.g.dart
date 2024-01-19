// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionsCollectionsResponseImpl
    _$$TransactionsCollectionsResponseImplFromJson(Map<String, dynamic> json) =>
        _$TransactionsCollectionsResponseImpl(
          documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => TransactionDocumentResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TransactionsCollectionsResponseImplToJson(
        _$TransactionsCollectionsResponseImpl instance) =>
    <String, dynamic>{
      'documents': instance.documents,
    };
