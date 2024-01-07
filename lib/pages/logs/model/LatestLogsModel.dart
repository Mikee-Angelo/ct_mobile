class LatestLogsModel {
  final bool status;
  final Data data;

  const LatestLogsModel({
    required this.status,
    required this.data,
  });
}

class Data {
  final int id;
  final int usersId;
  final int placesId;
  final String createdAt;
  final String updatedAt;
  final String phone;
  final String address;
  final DateTime? emailVerifiedAt;
  final int usersProfilesId;
  final String firstName;
  final String lastName;
  final String fullName;

  const Data({
    required this.id,
    required this.usersId,
    required this.placesId,
    required this.createdAt,
    required this.updatedAt,
    required this.phone,
    required this.address,
    required this.emailVerifiedAt,
    required this.usersProfilesId,
    required this.firstName,
    required this.lastName,
    required this.fullName,
  });
}
