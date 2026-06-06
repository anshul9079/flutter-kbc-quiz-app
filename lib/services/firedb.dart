import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class firedb {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> createnewuser(
    String name,
    String email,
    String photourl,
    String userid,
  ) async {
    try {
      print("========== FIRESTORE START ==========");

      final User? currentuser = _auth.currentUser;

      print("Current User : $currentuser");
      print("UID : ${currentuser?.uid}");
      print("Name : $name");
      print("Email : $email");

      print("STEP 1");

      await FirebaseFirestore.instance
          .collection("users")
          .doc(userid)
          .set({
        "name": name,
        "email": email,
        "photourl": photourl,
        "money": "50000",
      });

      print("STEP 2");
      print("USER REGISTERED SUCCESSFULLY");
      print("========== FIRESTORE END ==========");
    } catch (e, stackTrace) {
      print("========== FIRESTORE ERROR ==========");
      print(e);
      print(stackTrace);
      print("====================================");
    }
  }
}