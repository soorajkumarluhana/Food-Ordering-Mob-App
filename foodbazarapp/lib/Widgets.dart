import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget homerowcontainer(String image, String name) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 15),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(image)),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 20, color: Colors.white),
      )
    ],
  );
}

// columwidget

Widget homegridviewcontainer(
    String image, String leadingname, String trailingname) {
  return Container(
    height: 240,
    width: 220,
    decoration: BoxDecoration(
        color: Colors.blueGrey, borderRadius: BorderRadius.circular(20)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(image),
        ),
        ListTile(
          leading: Text(
            leadingname,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          trailing: Text(
            trailingname,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.white,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    ),
  );
}

// DrawerListtile

Widget drawerListitle(String name, IconData) {
  return ListTile(
    leading: Icon(
      IconData,
      color: Colors.white,
    ),
    title: Text(
      name,
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}
