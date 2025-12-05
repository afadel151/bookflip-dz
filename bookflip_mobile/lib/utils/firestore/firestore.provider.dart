import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'firestore.provider.g.dart';

@riverpod
FirebaseFirestore firebaseFirestore(Ref ref) {
  return FirebaseFirestore.instance;
}