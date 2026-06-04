import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class firedb {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  createnewuser(
    String name,
    String email,
    String photourl,
    String usjerid,
  ) async {
    final User? currentuser = _auth.currentUser;
    await FirebaseFirestore.instance
        .collection("users")
        .doc(currentuser!.uid)
        .set({
          "name": name,
          "email": email,
          "photourl": photourl,
          "money": "50000",
        })
        .then((value) => print("user ragistered successfully"));
  }
}
