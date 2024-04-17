import 'package:ika_smansara/domain/entities/list_bank_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';

abstract interface class ListBankRepository {
  Future<Result<List<ListBankDocument>>> getListBank();
}
