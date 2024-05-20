import 'usermodel.dart';

class UserDataModel {
  List<UsersModel>? users;
  int? total;
  int? skip;
  int? limit;

  UserDataModel({this.users, this.total, this.skip, this.limit});

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    List<UsersModel> uModel = [];
    for (Map<String, dynamic> eachMap in json['users']) {
      var eachModel = UsersModel.fromJson(eachMap);
      uModel.add(eachModel);
    }
    return UserDataModel(
        total: json['total'],
        skip: json['skip'],
        limit: json['limit'],
        users: uModel);
  }
}
