import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: camel_case_types
class bd {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> testeInicial() async {
    print("entrou dentro de testeInicial");
    // Create a new user with a first and last name
    final user = <String, dynamic>{
      "first": "Ada",
      "last": "Lovelace",
      "born": 1815
    };

    // Add a new document with a generated ID
    await db.collection("users").add(user).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}'));
  }

  void testMeio() async {
    // Create a new user with a first and last name
    final user = <String, dynamic>{
      "first": "Alan",
      "middle": "Mathison",
      "last": "Turing",
      "born": 1912
    };

    await
        // Add a new document with a generated ID
        db.collection("users").add(user).then((DocumentReference doc) =>
            print('DocumentSnapshot added with ID: ${doc.id}'));
  }
}
