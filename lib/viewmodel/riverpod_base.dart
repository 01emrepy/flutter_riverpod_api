import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_with_api/model/user_model.dart';
import 'package:riverpod_with_api/service/api_service.dart';

final userDataPrivider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUser();
});
