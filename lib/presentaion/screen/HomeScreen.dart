import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpClint;
import 'package:userjson/domain/model/userdatamodel.dart';
import 'package:userjson/presentaion/screen/userprofile.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
  UserDataModel? uData;
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('All Users')),
        body: uData != null
            ? uData!.users!.isNotEmpty
                ? ListView.builder(
                    itemCount: uData!.users!.length,
                    itemBuilder: (_, index) {
                      var userData = uData!.users![index];
                      return ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return UserProfile(dataModel: userData);
                          }));
                        },
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('${userData.image}'),
                        ),
                        title:
                            Text('${userData.firstName} ${userData.lastName}'),
                        subtitle: Text('User Id - ${userData.id}'),
                      );
                    })
                : Center(
                    child: Text('Data Not Found..!!'),
                  )
            : Center(child: CircularProgressIndicator()));
  }

  getData() async {
    String url = "https://dummyjson.com/users";

    var response = await httpClint.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = response.body;
      var rawData = jsonDecode(data);

      uData = UserDataModel.fromJson(rawData);

      setState(() {});
    }
  }
}
