import 'package:ika_smansara/data/appwrite/appwrite_list_bank_repository.dart';
import 'package:ika_smansara/data/repositories/list_bank_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_bank_repository_provider.g.dart';

@riverpod
ListBankRepository listBankRepository(ListBankRepositoryRef ref) =>
    AppwriteListBankRepository();
