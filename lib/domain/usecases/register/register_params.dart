class RegisterParams {
  final String name;
  final String email;
  final String address;
  final String phone;
  final bool? isAlumni;
  final String? graduateYear;
  final String password;

  RegisterParams({
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
    this.isAlumni = false,
    this.graduateYear = '0',
    required this.password,
  });
}
