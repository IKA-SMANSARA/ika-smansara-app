import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'widgets/checkout_header.dart';
import 'widgets/donation_amount_selector.dart';
import 'widgets/payment_method_selector.dart';
import 'widgets/notes_section.dart';
import 'widgets/payment_summary.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  final CampaignDocument? campaign;

  const CheckoutPage(this.campaign, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  String _selectedAmount = '';
  String _selectedPaymentMethod = 'qris'; // 'qris' or 'va'
  bool _isProcessing = false;

  final List<String> _defaultAmounts = [
    '50000',
    '100000',
    '200000',
    '500000',
  ];

  @override
  void initState() {
    super.initState();
    // Set default amount
    _selectedAmount = _defaultAmounts[0];
    _amountController.text = int.parse(_selectedAmount).toIDRCurrencyFormat();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  int get _donationAmount => int.parse(_selectedAmount.isNotEmpty ? _selectedAmount : '0');
  int get _paymentFee => _selectedPaymentMethod == 'qris' ? (_donationAmount * 0.015).toInt() : 5550;
  int get _totalReceived => _donationAmount - _paymentFee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kirim Donasi'),
        elevation: 0,
      ),
      body: SafeArea(
        child: _isProcessing
            ? Container(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: LoadingAnimationWidget.inkDrop(
                    color: Colors.amber,
                    size: 50,
                  ),
                ),
              )
            : SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Section
                    const CheckoutHeader(),

                    const SizedBox(height: 24),

                    // Donation Amount Section
                    DonationAmountSelector(
                      selectedAmount: _selectedAmount,
                      defaultAmounts: _defaultAmounts,
                      customAmountController: _amountController,
                      onAmountSelected: (amount) {
                        setState(() {
                          _selectedAmount = amount;
                          _amountController.text = int.parse(amount).toIDRCurrencyFormat();
                        });
                      },
                      onCustomAmountChanged: (value) {
                        setState(() {
                          _selectedAmount = value.replaceAll(RegExp(r'[^0-9]'), '');
                          _amountController.text = int.parse(_selectedAmount).toIDRCurrencyFormat();
                        });
                      },
                    ),

                    const SizedBox(height: 24),

                    // Payment Method Section
                    PaymentMethodSelector(
                      selectedMethod: _selectedPaymentMethod,
                      onMethodSelected: (method) {
                        setState(() {
                          _selectedPaymentMethod = method;
                        });
                      },
                    ),

                    const SizedBox(height: 24),

                    // Notes Section
                    NotesSection(
                      controller: _notesController,
                    ),

                    const SizedBox(height: 24),

                    // Payment Summary
                    PaymentSummary(
                      campaignName: widget.campaign?.campaignName ?? '',
                      userName: ref.read(userDataProvider).valueOrNull?.name ?? '',
                      donationAmount: _donationAmount.toIDRCurrencyFormat(),
                      paymentFee: _paymentFee.toIDRCurrencyFormat(),
                      totalReceived: _totalReceived.toIDRCurrencyFormat(),
                    ),

                    const SizedBox(height: 32),

                    // Pay Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: _donationAmount >= 50000 ? () => _handlePayment(context, ref) : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _donationAmount >= 50000 ? const Color(0xFF104993) : Colors.grey,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Bayar Sekarang',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
      ),
    );
  }

  void _handlePayment(BuildContext context, WidgetRef ref) {
    // Validate email before proceeding
    final userEmail = ref.read(userDataProvider).valueOrNull?.email;
    if (userEmail == null || userEmail.isEmpty) {
      _showErrorDialog(context, 'Email diperlukan untuk pembayaran');
      return;
    }

    // Basic email validation
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(userEmail)) {
      _showErrorDialog(context, 'Silakan masukkan alamat email yang valid');
      return;
    }

    // Check for common invalid email patterns
    if (userEmail.contains('test.com') ||
        userEmail.contains('example.com') ||
        userEmail.split('@')[0].length < 2 ||
        userEmail.split('@')[1].split('.')[0].length < 2) {
      _showErrorDialog(context, 'Silakan gunakan email yang valid (bukan test/example)');
      return;
    }

    // Show confirmation dialog
    _showPaymentConfirmationDialog(context, ref);
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text(
            'Pemberitahuan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            message,
            style: const TextStyle(height: 1.5),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF104993),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showPaymentConfirmationDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text(
            'Konfirmasi Pembayaran',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jumlah Donasi: ${_donationAmount.toIDRCurrencyFormat()}',
                style: const TextStyle(height: 1.5),
              ),
              Text(
                'Biaya Layanan: ${_paymentFee.toIDRCurrencyFormat()}',
                style: const TextStyle(height: 1.5),
              ),
              Text(
                'Total Diterima: ${_totalReceived.toIDRCurrencyFormat()}',
                style: const TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                'Apakah Anda yakin ingin melanjutkan pembayaran?',
                style: TextStyle(height: 1.5),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Batal',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _processPayment(ref);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF104993),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('Bayar'),
            ),
          ],
        );
      },
    );
  }

  void _processPayment(WidgetRef ref) {
    setState(() {
      _isProcessing = true;
    });

    final userData = ref.read(userDataProvider).valueOrNull;

    final transactionRequestData = TransactionRequest(
      amount: _donationAmount,
      paymentFee: _paymentFee,
      campaignId: widget.campaign?.id,
      campaignImage: widget.campaign?.photoThumbnail,
      campaignName: widget.campaign?.campaignName,
      userId: userData?.authKey,
      userName: userData?.name,
      userAddress: userData?.address,
      userEmail: userData?.email,
      userPhone: userData?.phone,
      transactionId: getRandomOrderIdNumber(),
      backerCount: widget.campaign?.backerCount,
      currentAmount: widget.campaign?.currentAmount,
      campaignDescription: widget.campaign?.campaignDescription,
      categories: widget.campaign?.categories,
      dateEndCampaign: widget.campaign?.dateEndCampaign,
      dateStartCampaign: widget.campaign?.dateStartCampaign,
      goalAmount: widget.campaign?.goalAmount,
      isActive: widget.campaign?.isActive,
      isDeleted: widget.campaign?.isDeleted,
      photoThumbnail: widget.campaign?.photoThumbnail,
      campaignCreatedBy: widget.campaign?.createdBy,
      note: _notesController.text.trim().isEmpty ? null : _notesController.text.trim(),
      enabledPayments: _selectedPaymentMethod == 'qris'
          ? ['other_qris']
          : ['echannel', 'permata_va', 'bca_va', 'bni_va', 'bri_va', 'cimb_va', 'other_va'],
    );

    // Navigate to payment page
    ref.read(routerProvider).pushNamed(
          'webview-snap-page',
          extra: transactionRequestData,
        );

    setState(() {
      _isProcessing = false;
    });
  }
}
