// ignore_for_file: inference_failure_on_instance_creation

import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class CreateCampaignFormBloc extends FormBloc<String, String> {
  CreateCampaignFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        title,
        longDescription,
        goalAmount,
        dateStartCampaign,
        dateEndCampaign,
      ],
    );
  }

  final title = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final longDescription = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final goalAmount = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final dateStartCampaign = InputFieldBloc<DateTime, Object>(
    initialValue: DateTime.now(),
    toJson: (value) => value.toUtc().toIso8601String(),
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final dateEndCampaign = InputFieldBloc<DateTime, Object>(
    initialValue: DateTime.now(),
    toJson: (value) => value.toUtc().toIso8601String(),
    validators: [
      FieldBlocValidators.required,
    ],
  );

  @override
  FutureOr<void> onSubmitting() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    emitSuccess();
  }

  @override
  Future<void> close() {
    title.close();
    longDescription.close();
    goalAmount.close();
    dateStartCampaign.close();
    dateEndCampaign.close();
    return super.close();
  }
}
