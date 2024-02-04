class ProfileEntity {
  const ProfileEntity({
    required this.id,
    required this.userId,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int userId;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String address;
  final DateTime createdAt;
  final DateTime updatedAt;
}
