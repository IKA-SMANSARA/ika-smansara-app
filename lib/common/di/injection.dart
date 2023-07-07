// ignore: depend_on_referenced_packages
import 'package:get_it/get_it.dart';
import 'package:ika_smansara/common/di/injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
