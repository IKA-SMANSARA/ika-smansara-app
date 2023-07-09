import 'package:ika_smansara/common/common.dart';

class ServerFailure implements Failure {
  ServerFailure({required this.message});

  @override
  final String message;

  @override
  String toString() => 'ServerFailure { message: $message }';
}
