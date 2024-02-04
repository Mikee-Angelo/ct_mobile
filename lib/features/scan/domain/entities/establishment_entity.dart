class EstablishmentEntity {
  EstablishmentEntity({
    this.id,
    this.establishmentCode,
    this.firstName,
    this.middleName,
    this.lastName,
    this.emailAddress,
    this.contactNumber,
    this.establishmentName,
    this.address,
    this.baranggay,
    this.city,
    this.lng,
    this.lat,
    this.status,
    this.createdAt,
    this.updatedAt,
  });
  
  final int? id;
  final String? establishmentCode;
  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? emailAddress;
  final String? contactNumber;
  final String? establishmentName;
  final String? address;
  final String? baranggay;
  final String? city;
  final String? lng;
  final String? lat;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
}
