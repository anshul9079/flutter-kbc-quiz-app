import 'package:shared_preferences/shared_preferences.dart';

class Localdb {
  static final useridkey = "fkldsfldsf";
  static final mkey = "fjkdkldsfldsf";
  static final lkey = "fkldfdsfldsf";
  static final rkey = "fkldsfgfrldsf";
  static final nkey = "fkldsfldsfgrrf";
  static final pkey = "fkldsfldsfwww"; 
  static final loginkey = "isLoggedIn";

  static Future<bool> saveuserid(String userid) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return await preference.setString(useridkey, userid);
    
  }


  static Future<String?> getuserid() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return  preference.getString(useridkey);
  }



static Future<bool> saveLogin(bool value) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  return await preference.setBool(loginkey, value);
}

static Future<bool> getLogin() async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  return preference.getBool(loginkey) ?? false;
}
  
  static Future<bool> savemoney(String money) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return await preference.setString(mkey, money);
    
  }


  static Future<String?> getmoney() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return  preference.getString(mkey);
  }


  
  static Future<bool> savelavel(String level) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return await preference.setString(lkey, level);
    
  }


  static Future<String?> getlavel() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return  preference.getString(lkey);
  }


  
  static Future<bool> saverank(String rank) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return await preference.setString(rkey, rank);
    
  }


  static Future<String?> getrank() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return  preference.getString(rkey);
  }


  
  static Future<bool> savename(String name) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return await preference.setString(nkey, name);
    
  }


  static Future<String?> getname() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return  preference.getString(nkey);
  }


  
  static Future<bool> saveimageurl(String profile) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return await preference.setString(pkey, profile);
    
  }


  static Future<String?> getimageurl() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    return  preference.getString(pkey);
  }

}
 