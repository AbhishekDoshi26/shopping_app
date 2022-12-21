import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<String> addUser({
    required String email,
    required String password,
  }) async {
    try {
      CollectionReference reference =
          FirebaseFirestore.instance.collection('users');
      await reference.doc(email).set({
        'email': email,
        'password': password,
      });
      return 'Success';
    } catch (e) {
      return 'Failure';
    }
  }

  Future<Map<String, dynamic>> getUser({
    required String email,
  }) async {
    CollectionReference _reference =
        FirebaseFirestore.instance.collection('users');
    final _snapshot = await _reference.doc(email).get();
    final _data = _snapshot.data() as Map<String, dynamic>;
    return _data;
  }
}
