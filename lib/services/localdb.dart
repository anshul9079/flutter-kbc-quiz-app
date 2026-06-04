import 'package:shared_preferences/shared_preferences.dart';

class Localdb {
  static final useridkey = "fkldsfldsf";

  static Future<bool> saveuserid(String userid) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return await preference.setString(useridkey, userid);
    
  }


  static Future<String?> getuserid() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return  preference.getString(useridkey);
  }

}
