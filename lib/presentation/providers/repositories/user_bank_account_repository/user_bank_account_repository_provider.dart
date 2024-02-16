import 'package:ika_smansara/data/appwrite/appwrite_user_bank_account.dart';
import 'package:ika_smansara/data/repositories/user_bank_account_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_bank_account_repository_provider.g.dart';

@riverpod
UserBankAccountRepository userBankAccountRepository(
        UserBankAccountRepositoryRef ref) =>
    AppwriteUserBankAccount();
