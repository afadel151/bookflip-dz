import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.repository.g.dart';

class AuthRepository {
  AuthRepository(this._auth);

  final FirebaseAuth _auth;

  Future<void> signInWithEmailAndPAssword({
    required String email,
    required String password,
  }) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> createUserWithEmailAndPAssword({
    required String email,
    required String password,
  }) async {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  User? get currentUser {
    return _auth.currentUser;
  }

  Stream<User?> authStateChange() {
    return _auth.authStateChanges();
  }

  Future<void> logOut() async {
    await _auth.signOut();
  }
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepository(FirebaseAuth.instance);
}

@Riverpod(keepAlive: true)
Stream<User?> authStateChanges(Ref ref) {
  final authRepo = ref.watch(authRepositoryProvider);
  return authRepo.authStateChange();
}

@Riverpod(keepAlive: true)
User? currentUser(Ref ref) {
  final authRepo = ref.watch(authRepositoryProvider);
  return authRepo.currentUser;
}
