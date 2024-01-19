// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_backer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListBackerImpl _$$ListBackerImplFromJson(Map<String, dynamic> json) =>
    _$ListBackerImpl(
      listBacker: (json['listBacker'] as List<dynamic>?)
          ?.map((e) => BackerDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListBackerImplToJson(_$ListBackerImpl instance) =>
    <String, dynamic>{
      'listBacker': instance.listBacker,
    };
