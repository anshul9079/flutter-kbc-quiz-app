import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kbc_app/services/localdb.dart';

class FireDB {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  createNewUser(String name, String email, String photoUrl, String uid) async {
    final User? current_user = _auth.currentUser;
    if (await getUser()) {
      print("USER ALREADY EXISTS");
    } else {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(current_user!.uid)
          .set({
            "name": name,
            "email": email,
            "photoUrl": photoUrl,
            "money": "55555",
          })
          .then((value) async {
            await Localdb.savemoney("999");
            await Localdb.savelavel("0");
            await Localdb.saverank("0");
            print("User Registered Successfully");
          });
    }
  }

  Future<bool> getUser() async {
    final User? current_user = _auth.currentUser;
    String user = "";

    await FirebaseFirestore.instance
        .collection("users")
        .doc(current_user!.uid)
        .get()
        .then((value) async {
          user = value.data().toString();

          await Localdb.savemoney("999");
          await Localdb.savelavel("99");
          await Localdb.saverank("1");
        });
    if (user.toString() == "null") {
      return false;
    } else {
      return true;
    }
  }
}
