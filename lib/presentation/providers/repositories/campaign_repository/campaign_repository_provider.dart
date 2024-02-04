import 'package:ika_smansara/data/appwrite/appwrite_campaign_repository.dart';
import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'campaign_repository_provider.g.dart';

@riverpod
CampaignRepository campaignRepository(CampaignRepositoryRef ref) =>
    AppwriteCampaignRepository();
