import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirku/login.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) =>
  Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text("REGISTER",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        labelText: "User Name"
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        labelText: "Email"
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        labelText: "Password"
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Row(
                      children: [
                        Text("jika anda telah memiliki akun , silahkan login"),
                        TextButton(
                          onPressed: () => Get.to(Login()), 
                          child: Text("LOGIN")
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ),
          ListTile(
            title: TextButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[800])
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text("REGISTER"),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}