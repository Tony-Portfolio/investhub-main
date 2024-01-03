import 'package:investhub/app/data/model/course.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class CourseProvider {
  CourseProvider();

  // Get request
  // Future<User> getUser() async {
  //   return User.fromJson(
  //     (await ApiConnect.instance.get(EndPoints.user)).getBody(),
  //   );
  // }
  Future<List<Course>> getItems() async {
    final jsonString = await rootBundle.loadString('assets/json/course.json');
    final jsonData = json.decode(jsonString) as List<dynamic>;

    return jsonData.map((item) => Course.fromJson(item)).toList();
  }
}
