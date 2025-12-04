import 'dart:async';

import 'package:bookflip_mobile/features/auth/data/auth.repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends AsyncNotifier {
  @override
  FutureOr<dynamic> build() {
    return null;
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(
      () => ref
          .read(authRepositoryProvider)
          .createUserWithEmailAndPassword(email: email, password: password),
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
          .signInWithEmailAndPassword(email: email, password: password),
    );
  }

  Future<void> logOutUser() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(authRepositoryProvider).logOut(),
    );
  }

  Future<void> signInWithGoogle() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(authRepositoryProvider).signInWithGoogle(),
    );
  }
}
