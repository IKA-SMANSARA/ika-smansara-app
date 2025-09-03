import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_secure_text_field.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController graduateYearController = TextEditingController();
  var _isAlumni = false;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
    emailController.dispose();
    addressController.dispose();
    phoneController.dispose();
    graduateYearController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      userDataProvider,
      (previous, next) {
        if (next is AsyncData && next.value != null) {
          ref.read(routerProvider).goNamed('home');
        } else if (next is AsyncError) {
          context.showSnackBar(
            next.error.toString(),
          );
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Buat Akun Baru',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF104993),
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Lengkapi data diri Anda untuk mendaftar',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              const SizedBox(height: 32),
              CustomTextField(
                labelText: 'Nama Lengkap',
                controller: nameController,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Email',
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Alamat',
                controller: addressController,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Nomor Telepon',
                controller: phoneController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              CustomSecureTextField(
                labelText: 'Password',
                controller: passwordController,
              ),
              const SizedBox(height: 16),
              CustomSecureTextField(
                labelText: 'Konfirmasi Password',
                controller: retypePasswordController,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement registration logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF104993),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sudah punya akun? ',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextButton(
                    onPressed: () {
                      ref.read(routerProvider).goNamed('login');
                    },
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        color: Color(0xFF104993),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}