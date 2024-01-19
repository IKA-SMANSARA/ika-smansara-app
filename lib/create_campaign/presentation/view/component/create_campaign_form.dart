import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/create_campaign/create_campaign.dart';
import 'package:image_picker/image_picker.dart';

class CreateCampaignForm extends StatelessWidget {
  const CreateCampaignForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => CreateCampaignFormBloc(),
          ),
          BlocProvider(
            create: (_) => ImageCubit(),
          ),
        ],
        child: Builder(
          builder: (context) {
            final createCampaignFormBloc =
                context.read<CreateCampaignFormBloc>();

            return FormBlocListener<CreateCampaignFormBloc, String, String>(
              onSubmitting: (context, state) {},
              onSubmissionFailed: (context, state) {},
              onSuccess: (context, state) {},
              onFailure: (context, state) {},
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  children: [
                    const Gap(16),
                    BlocBuilder<ImageCubit, ImageState>(
                      buildWhen: (previous, current) =>
                          previous.image != current.image,
                      builder: (context, state) {
                        return Column(
                          children: [
                            if (state.image == null)
                              const Icon(
                                Icons.image_rounded,
                                size: 70,
                              ),
                            if (state.image != null)
                              Image.file(
                                state.image ?? File('assets/images/a1.webp'),
                                height: 200,
                              ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF104993),
                                minimumSize: const Size(350, 36),
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                              ),
                              onPressed: () async {
                                final image = await ImagePicker().pickImage(
                                  source: ImageSource.gallery,
                                );
                                if (image == null) return;
                                // ignore: use_build_context_synchronously
                                await context.read<ImageCubit>().setImage(
                                      File(image.path),
                                    );
                              },
                              child: Text(
                                'Gambar Poster Galang Dana',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    const Gap(16),
                    TextFieldBlocBuilder(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      textFieldBloc: createCampaignFormBloc.title,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: buildInputDecoration(
                        'Nama Acara Penggalangan Dana',
                        'Nama Acara Penggalangan Dana',
                        null,
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: TextFieldBlocBuilder(
                        textAlignVertical: TextAlignVertical.top,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        textFieldBloc: createCampaignFormBloc.longDescription,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        expands: true,
                        textInputAction: TextInputAction.next,
                        decoration: buildInputDecoration(
                          'Deskripsi Kegiatan',
                          'Deskripsi Kegiatan',
                          null,
                        ),
                      ),
                    ),
                    TextFieldBlocBuilder(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      textFieldBloc: createCampaignFormBloc.goalAmount,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: buildInputDecoration(
                        'Target Pengumpulan Dana',
                        'Target Pengumpulan Dana',
                        'Rp. ',
                      ),
                    ),
                    DateTimeFieldBlocBuilder(
                      dateTimeFieldBloc:
                          createCampaignFormBloc.dateStartCampaign,
                      format: DateFormat('dd-MM-yyyy'),
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100),
                      decoration: buildInputDecoration(
                        'Tanggal Dimulai',
                        'Tanggal Dimulai',
                        null,
                      ),
                    ),
                    DateTimeFieldBlocBuilder(
                      dateTimeFieldBloc: createCampaignFormBloc.dateEndCampaign,
                      format: DateFormat('dd-MM-yyyy'),
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100),
                      decoration: buildInputDecoration(
                        'Tanggal Selesai',
                        'Tanggal Selesai',
                        null,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF104993),
                        minimumSize: const Size(350, 36),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      onPressed: createCampaignFormBloc.submit,
                      child: Text(
                        'Buat Penggalangan Dana',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(
    String label,
    String hint,
    String? prefixText,
  ) {
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      label: Text(
        label,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
      ),
      contentPadding: const EdgeInsets.all(8),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xff4880FF),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xffff486a),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xffBBBCBC),
        ),
      ),
      fillColor: const Color(0xffF8FAFB),
      filled: true,
      hintText: hint,
      hintStyle: GoogleFonts.inter(
        fontSize: 18,
        color: Colors.black45,
        fontWeight: FontWeight.w400,
      ),
      prefixText: prefixText ?? '',
      prefixStyle: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
    );
  }
}
