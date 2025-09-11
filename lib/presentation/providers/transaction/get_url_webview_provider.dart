import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/domain/usecases/snap_payment/snap_payment.dart';
import 'package:ika_smansara/domain/usecases/snap_payment/snap_payment_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/snap_payment_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_url_webview_provider.g.dart';

@riverpod
Future<MidtransTransactionResponse?> getUrlWebview(
  GetUrlWebviewRef ref, {
  required TransactionRequest transactionRequest,
}) async {
  // Validate email before calling snap payment
  final email = transactionRequest.userEmail;
  if (email == null || email.isEmpty) {
    throw Exception('Email is required for payment');
  }

  // Basic email validation
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(email)) {
    throw Exception('Invalid email format. Please use a valid email address.');
  }

  // Check for common invalid email patterns
  final emailParts = email.split('@');
  if (email.contains('test.com') ||
      email.contains('example.com') ||
      emailParts.length != 2 ||
      emailParts[0].length < 2) {
    throw Exception('Please use a valid email address (not test/example emails)');
  }

  final domainParts = emailParts[1].split('.');
  if (domainParts.length < 2 || domainParts[0].length < 2) {
    throw Exception('Please use a valid email address (not test/example emails)');
  }

  SnapPayment snapPayment = ref.read(snapPaymentUseCaseProvider);

  var result = await snapPayment(
    SnapPaymentParams(
      transactionRequest: transactionRequest,
    ),
  );

  return switch (result) {
    Success(value: final data) => data,
    Failed(:final message) => throw Exception(message),
  };
}
