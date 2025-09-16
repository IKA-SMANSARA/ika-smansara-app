import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/misc/selected_poster.dart';
import 'package:ika_smansara/presentation/providers/campaign/create_new_campaign_provider.dart';
import 'package:ika_smansara/presentation/widgets/campaign_form.dart';

class CreateCampaignPage extends ConsumerStatefulWidget {
  const CreateCampaignPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateCampaignPageState();
}

class _CreateCampaignPageState extends ConsumerState<CreateCampaignPage> {
  final TextEditingController campaignNameController = TextEditingController();
  final TextEditingController campaignDescriptionController =
      TextEditingController();
  final TextEditingController campaignGoalAmountController =
      TextEditingController();
  final TextEditingController campaignStartDateController =
      TextEditingController();
  final TextEditingController campaignEndDateController =
      TextEditingController();

  var categoriesData = <String>[];

  @override
  void dispose() {
    super.dispose();
    campaignNameController.dispose();
    campaignDescriptionController.dispose();
    campaignGoalAmountController.dispose();
    campaignStartDateController.dispose();
    campaignEndDateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final saveDataState = ref.watch(createNewCampaignProvider);

    // save data state error
    ref.listen(
      createNewCampaignProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                'Buat Galang Dana',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF104993),
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Lengkapi informasi acara penggalangan dana Anda',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              // Image selection section
              selectedPoster(
                ref: ref,
                imageUrl: '',
                isLoading: saveDataState.isLoading,
                context: context,
              ),
              const SizedBox(height: 32),
               // Campaign form
               CampaignForm(
                 campaignNameController: campaignNameController,
                 campaignDescriptionController: campaignDescriptionController,
                 campaignGoalAmountController: campaignGoalAmountController,
                 campaignStartDateController: campaignStartDateController,
                 campaignEndDateController: campaignEndDateController,
                 categoriesData: categoriesData,
                 isUpdate: false,
               ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
