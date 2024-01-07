class UserModel {
  final int id;
  final String uuid;
  final Null email;
  final String phone;
  final String address;
  final DateTime? emailVerifiedAt;
  final String qr;
  final String createdAt;
  final String updatedAt;
  final String firstName;
  final String lastName;
  final String fullName;

  const UserModel({
    required this.id,
    required this.uuid,
    required this.email,
    required this.phone,
    required this.address,
    required this.emailVerifiedAt,
    required this.qr,
    required this.createdAt,
    required this.updatedAt,
    required this.firstName,
    required this.lastName,
    required this.fullName,
  });
}
