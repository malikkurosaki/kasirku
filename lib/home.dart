import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirku/add_product.dart';
import 'package:get/get.dart';
import 'package:kasirku/login.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) =>
  Scaffold(
    drawer: Drawerku(),
    appBar: AppBar(
      title: Text("KASIRKU"),
      actions: [
        IconButton(
          icon: Icon(Icons.add_circle_outline_rounded), 
          onPressed: () => Get.to(AddProdwuct())
        )
      ],
    ),
    body: SafeArea(
      child: Column(
        children: [
          Flexible(
            child: GridView.count(
              childAspectRatio: 0.8,
              crossAxisCount: 3,
              children: [
                for(final ls in List.generate(100, (index) => <String, dynamic>{"nama": "Nama Product $index", "harga": 5000+index}))
                Card(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Container(
                            color: Colors.grey[200],
                            child: Center(
                              child: Icon(Icons.image),
                            ),
                          )
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          child: Text(ls['nama'].toString().toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          child: Text("Rp "+ls['harga'].toString().toUpperCase(),),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
          ListTile(
            title: Card(
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Qty"),
                          Text("20")
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total"),
                          Text("Rp 40.000")
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.grey[800])
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text("BAYAR"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

class Drawerku extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
  Drawer(
    child: SafeArea(
      child: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey[200]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 50,
                      )
                    ],
                  )
                ),
                ListTile(
                  title: Text("Name Of User"),
                ),
                Divider(),
                ListTile(
                  title: Text("Email Of User"),
                )
              ],
            ),
          ),
          ListTile(
            title: TextButton(
              onPressed: () => Get.offAll(Login()),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[800])
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text("LOGOUT"),
                ),
              ),
            ),
          )
        ],
        
      ),
    ),
  );
}