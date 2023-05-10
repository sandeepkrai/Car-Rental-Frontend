class Customer{
  String firstName;
  String middleName;
  String lastName;
  String street;
  String city;
  String stateProvince;
  String country;
  String postalCode;
  String drivingLicenseId;
  String email;
  String phoneNumber;

  Customer({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.street,
    required this.city,
    required this.stateProvince,
    required this.country,
    required this.postalCode,
    required this.drivingLicenseId,
    required this.email,
    required this.phoneNumber,
  });
  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      firstName: json['firstName'],
      middleName: json['middleName'],
      lastName: json['lastName'],
      street: json['street'],
      city: json['city'],
      stateProvince: json['stateProvince'],
      country: json['country'],
      postalCode: json['postalCode'],
      drivingLicenseId: json['drivingLicenseId'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
    );
  }
  Map<String, dynamic> toJson() => {
    'firstName': firstName,
    'middleName': middleName,
    'lastName': lastName,
    'street': street,
    'city': city,
    'stateProvince': stateProvince,
    'country': country,
    'postalCode': postalCode,
    'drivingLicenseId': drivingLicenseId,

  };
}