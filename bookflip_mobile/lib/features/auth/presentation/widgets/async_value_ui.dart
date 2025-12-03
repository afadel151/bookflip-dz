import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

extension AsyncValueUI on AsyncValue {
  void showAlertDialog(BuildContext context) {
    if (!isLoading && hasError) {
      final message = _errorMessage(error);
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          // title:  const Text('Alert title'),
          leading: Icon(Icons.warning),
          title: const Text("Warning"),
          content: Text(message),
        ),
      );
    }
  }
}

String _errorMessage(Object? error) {
  if (error is FirebaseAuthException) {
    return error.message ?? error.toString();
  } else {
    return error.toString();
  }
}
