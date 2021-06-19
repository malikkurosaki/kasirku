import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasirku/home.dart';
import 'package:kasirku/register.dart';

class Login extends StatelessWidget {

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
                    title: Text("LOGIN",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: "contoh: malik@gmail.com"
                      ),
                      
                    ),
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: "contoh: 123456"
                      ),
                      
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Row(
                      children: [
                        Text("jika anda belum memiliki akun silahkan"),
                        TextButton(
                          onPressed: () => Get.to(Register()), 
                          child: Text("MENDAFTAR")
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
              onPressed: () => Get.offAll(Home()),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[800])
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text("LOGIN"),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}