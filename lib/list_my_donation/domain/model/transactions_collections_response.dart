import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

part 'transactions_collections_response.freezed.dart';
part 'transactions_collections_response.g.dart';

@freezed
class TransactionsCollectionsResponse with _$TransactionsCollectionsResponse {
  factory TransactionsCollectionsResponse({
    List<TransactionDocumentResponse>? documents,
  }) = _TransactionsCollectionsResponse;

  factory TransactionsCollectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionsCollectionsResponseFromJson(json);
}
