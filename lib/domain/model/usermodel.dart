class UsersModel {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  int? height;
  num? weight;
  String? eyeColor;
  String? domain;
  String? ip;
  String? macAddress;
  String? university;
  String? ein;
  String? ssn;
  String? userAgent;

  UsersModel({
    this.id,
    this.firstName,
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    this.email,
    this.phone,
    this.username,
    this.password,
    this.birthDate,
    this.image,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.domain,
    this.ip,
    this.macAddress,
    this.university,
    this.ein,
    this.ssn,
    this.userAgent,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        maidenName: json['maidenName'],
        age: json['age'],
        gender: json['gender'],
        email: json['email'],
        phone: json['phone'],
        username: json['username'],
        password: json['password'],
        birthDate: json['birthDate'],
        image: json['image'],
        bloodGroup: json['bloodGroup'],
        height: json['height'],
        weight: json['weight'],
        eyeColor: json['eyeColor']);
  }
}
