import 'package:ika_smansara/data/appwrite/appwrite_payout_repository.dart';
import 'package:ika_smansara/data/repositories/payout_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payout_repository_provider.g.dart';

@riverpod
PayoutRepository payoutRepository(
    PayoutRepositoryRef ref) => AppwritePayoutRepository();
