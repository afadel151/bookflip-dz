import 'dart:async';

import 'package:bookflip_mobile/features/auth/data/auth.repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.controller.g.dart';


@Riverpod(keepAlive: true)
class AuthController extends AsyncNotifier {
  @override
  FutureOr<dynamic> build() {
    throw UnimplementedError();
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(
      () => ref
            .read(authRepositoryProvider)
            .createUserWithEmailAndPAssword(email: email, password: password)
    );
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(
      () => ref
            .read(authRepositoryProvider)
            .signInWithEmailAndPAssword(email: email, password: password)
    );
    
  }

}