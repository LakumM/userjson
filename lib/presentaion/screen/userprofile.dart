import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../domain/model/usermodel.dart';

class UserProfile extends StatelessWidget {
  UsersModel dataModel;
  UserProfile({required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            maxRadius: 80,
            backgroundImage: NetworkImage('${dataModel.image}'),
          ),
          Text('${dataModel.firstName}'),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(22)),
            ),
          ),
        ],
      ),
    );
  }
}
