import 'package:flutter/material.dart';
import 'package:miner_app/objects/user.dart';
import 'package:miner_app/services/database.dart';


AuthService _authService = AuthService();
Widget logo(Size size) {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: size.height * 0.15,
              width: size.width * 0.4,
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "Miner App",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato"),
            )
          ],
        )
      ],
    ),
  );
}
Widget input(IconData icon, String hint, TextEditingController controller,
    bool obscure) {
  return Container(
    child: TextField(
      controller: controller,
      obscureText: obscure,
      style: const TextStyle(fontSize: 16, color: Colors.white, fontFamily: "Lato"),
      decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Colors.white60,
          ),
          hintText: hint,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white, width: 3)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white, width: 1)),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          )),
    ),
  );
}

Widget loginButton(String text, void func()) {
  return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(Colors.black)),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color.fromRGBO(31, 52, 56, 1),
            fontFamily: "Lato"),
      ),
      onPressed: () {
        func();
      });
}

Widget loginWithButtonMail(void func()) {
  return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.mail,
                size: 20,
                color: Color.fromRGBO(55, 66, 63, 1),
              ),
              SizedBox(width: 10),
              Text(
                "ww",
                style: TextStyle(
                    fontSize: 18, color: Colors.black, fontFamily: "Lato"),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
      onPressed: () {
        func();
      });
}
