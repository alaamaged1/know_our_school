import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:know_our_school/Model/model.dart';

class SchoolViewModel extends ChangeNotifier {
  SchoolModel? _school;

  SchoolModel? get school => _school;

  Future<void> loadSchoolData() async {
    final String response =
        await rootBundle.loadString('assets/schoolData.json');
    final data = await json.decode(response);
    _school = SchoolModel.fromJson(data[0]);
    notifyListeners();
  }
}
