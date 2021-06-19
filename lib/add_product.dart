import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProdwuct extends StatelessWidget {

  @override
  Widget build(BuildContext context) =>
  Scaffold(
    appBar: AppBar(
      title: Text("ADD PRODUCT"),
    ),
    body: SafeArea(
      child: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Detail Prodwuct",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(),
                      labelText: "Nama Product"
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(),
                      labelText: "Harga Product"
                    ),
                  ),
                )
              ],
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
                  child: Text("SIMPAN"),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}