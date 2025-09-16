import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_secure_text_field.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'methods/index.dart';
import 'widgets/index.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final RegisterControllers _controllers = RegisterControllers();
  var _isAlumni = false;
  var _isLoading = false;

  @override
  void dispose() {
    _controllers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      userDataProvider,
      (previous, next) {
        if (next is AsyncData && next.value != null) {
          ref.read(routerProvider).goNamed('home');
        } else if (next is AsyncError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(next.error.toString())),
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
                controller: _controllers.nameController,
                enabled: !_isLoading,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Email',
                controller: _controllers.emailController,
                keyboardType: TextInputType.emailAddress,
                enabled: !_isLoading,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Alamat',
                controller: _controllers.addressController,
                enabled: !_isLoading,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Nomor Telepon',
                controller: _controllers.phoneController,
                keyboardType: TextInputType.phone,
                enabled: !_isLoading,
              ),
              const SizedBox(height: 16),
              CustomSecureTextField(
                labelText: 'Password',
                controller: _controllers.passwordController,
                enabled: !_isLoading,
              ),
              const SizedBox(height: 16),
              CustomSecureTextField(
                labelText: 'Konfirmasi Password',
                controller: _controllers.retypePasswordController,
                enabled: !_isLoading,
              ),
               const SizedBox(height: 16),
               AlumniCheckbox(
                 isAlumni: _isAlumni,
                 onChanged: (bool? value) {
                   setState(() {
                     _isAlumni = value ?? false;
                     if (!_isAlumni) {
                       _controllers.graduateYearController.clear();
                     }
                   });
                 },
                 enabled: !_isLoading,
               ),
               ...(_isAlumni
                   ? [
                       const SizedBox(height: 16),
                        GraduateYearField(
                          controller: _controllers.graduateYearController,
                          enabled: !_isLoading,
                        ),
                      ]
                    : []),
              const SizedBox(height: 24),
              RegisterButton(
                onPressed: _isLoading
                    ? () {}
                    : () {
                        RegisterHandler.handleRegistration(
                          nameController: _controllers.nameController,
                          emailController: _controllers.emailController,
                          addressController: _controllers.addressController,
                          phoneController: _controllers.phoneController,
                          passwordController: _controllers.passwordController,
                          retypePasswordController: _controllers.retypePasswordController,
                          graduateYearController: _controllers.graduateYearController,
                          isAlumni: _isAlumni,
                          context: context,
                          ref: ref,
                          setLoading: (bool loading) {
                            setState(() {
                              _isLoading = loading;
                            });
                          },
                        );
                      },
                isLoading: _isLoading,
              ),
              const SizedBox(height: 16),
              const LoginLink(),
            ],
          ),
        ),
      ),
    );
  }
}