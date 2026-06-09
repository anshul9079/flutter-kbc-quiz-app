import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class internetconnection {
  bool isconnected = false;

  checkconnection() async {
    isconnected = await InternetConnectionChecker().hasConnection;
    final msg = isconnected ? "you are online" : "connect to the internet";
    showSimpleNotification(Text("$msg")); 
  }
}
