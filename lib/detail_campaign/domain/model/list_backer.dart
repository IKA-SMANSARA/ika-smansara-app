import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';

part 'list_backer.freezed.dart';
part 'list_backer.g.dart';

@freezed
class ListBacker with _$ListBacker {

  factory ListBacker({
    List<BackerDocument>? listBacker,
  }) = _ListBacker;

  factory ListBacker.fromJson(Map<String, dynamic> json) => _$ListBackerFromJson(json);
}
