import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:riverpod_with_api/model/user_model.dart';

class ApiService {
  Future<List<UserModel>> getUser() async {
    Response response =
        await get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body)['data'];
      return data.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}

final userProvider = Provider<ApiService>((ref) => ApiService());
