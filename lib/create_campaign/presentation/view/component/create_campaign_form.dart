import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/create_campaign/create_campaign.dart';

class CreateCampaignForm extends StatelessWidget {
  const CreateCampaignForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: BlocProvider(
        create: (_) => CreateCampaignFormBloc(),
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
                    SizedBox(
                      height: 16.h,
                    ),
                    TextFieldBlocBuilder(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
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
                      height: 200.h,
                      child: TextFieldBlocBuilder(
                        textAlignVertical: TextAlignVertical.top,
                        padding: EdgeInsets.symmetric(vertical: 8.h),
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
                      padding: EdgeInsets.symmetric(vertical: 8.h),
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
                        minimumSize: Size(350.w, 36.h),
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                      ),
                      onPressed: createCampaignFormBloc.submit,
                      child: Text(
                        'Buat Penggalangan Dana',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16.sp,
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
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
      ),
      contentPadding: EdgeInsets.all(8.w),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
          color: Color(0xff4880FF),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
          color: Color(0xffff486a),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
          color: Color(0xffBBBCBC),
        ),
      ),
      fillColor: const Color(0xffF8FAFB),
      filled: true,
      hintText: hint,
      hintStyle: GoogleFonts.inter(
        fontSize: 18.sp,
        color: Colors.black45,
        fontWeight: FontWeight.w400,
      ),
      prefixText: prefixText ?? '',
      prefixStyle: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
    );
  }
}
