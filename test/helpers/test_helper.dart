import 'package:ika_smansara/data/repositories/authentication.dart';
import 'package:ika_smansara/data/repositories/authentication.dart';
import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/data/repositories/user_repository.dart';
import 'package:mockito/mockito.dart';

// Mock classes for testing
class MockCampaignRepository extends Mock implements CampaignRepository {}
class MockAuthentication extends Mock implements Authentication {}
class MockUserRepository extends Mock implements UserRepository {}