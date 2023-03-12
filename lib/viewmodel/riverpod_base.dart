import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_with_api/model/user_model.dart';
import 'package:riverpod_with_api/view/home_page.dart';

final userDataController = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUser();
});

