import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:miner_app/objects/user.dart';
import 'bottom_nav_page.dart';
import 'loginPage.dart';



class Check extends StatelessWidget {
  const Check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppUser? user = Provider.of<AppUser?>(context);
    bool isLoggedIn = false;
    isLoggedIn = user != null;
    return isLoggedIn ?  const BottomBar() : const LoginPage();
  }
}