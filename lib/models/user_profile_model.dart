import 'package:flutter/material.dart';

class UserProfileModel {
  final String fullname;
  final String nickname;
  final String email;
  final String imageLink;
  final String phone;
  final String date;

  UserProfileModel(this.fullname, this.email, this.imageLink, this.phone, this.date, this.nickname);
}
