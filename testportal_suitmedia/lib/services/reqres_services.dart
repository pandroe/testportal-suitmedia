import 'package:flutter/material.dart';
import 'package:testportal_suitmedia/models/list_user_model.dart';
import 'package:dio/dio.dart';



class ReqresServices {
  final String _url = 'https://reqres.in/api/users';
  final _dio = Dio();
   Future<List<ListUserModel>> fetchData() async {
    try {
      final Response response = await _dio.get('${_url}');

      debugPrint(response.data.toString());

      List<dynamic> data = response.data['data'];
      List<ListUserModel> dataUser = data.map((e) => ListUserModel.fromJson(e)).toList();

      return dataUser;
    } catch (e) {
      rethrow;
    }
  }
}


