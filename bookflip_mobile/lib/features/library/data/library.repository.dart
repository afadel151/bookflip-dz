


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'library.repository.g.dart';


class LibraryRepository {
  LibraryRepository(this._store);

    final FirebaseFirestore _store;


}


@Riverpod(keepAlive: true)
LibraryRepository settingsRepository(Ref ref) {
  return LibraryRepository(FirebaseFirestore.instance);
}
