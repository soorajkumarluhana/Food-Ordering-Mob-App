import 'package:flutter/material.dart';
import 'package:foodorderingapp/LoginPage.dart';
import 'package:foodorderingapp/Widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        drawer: Drawer(
          child: Container(
            color: Colors.black45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Sooraj Kumar Luhana"),
                  accountEmail: Text("soorajkumarluhana@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("Images/picture.jpg"),
                  ),
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                drawerListitle("Profile", Icons.person),
                drawerListitle("Cart", Icons.shop),
                drawerListitle("Order", Icons.money),
                drawerListitle("About", Icons.sort),
                Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                Text(
                  "Commuicate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                drawerListitle("Change", Icons.lock),
                GestureDetector(
                    onTap: () {
                       Navigator.of(context).pushNamed("/Login");
                    },
                    child: Container(
                        child: drawerListitle("Log Out", Icons.logout))),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                  backgroundImage: AssetImage("Images/picture.jpg")),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    homerowcontainer("Images/pizza.jpg", "All"),
                    homerowcontainer("Images/burger.jpg", "Burger"),
                    homerowcontainer("Images/pizza.jpg", "Recipe"),
                    homerowcontainer("Images/pizza2.jpg", "Pizza"),
                    homerowcontainer("Images/pizza.jpg", "Drink"),
                    homerowcontainer("Images/pizza2.jpg", "Fries"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 510,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 20,
                  children: [
                    homegridviewcontainer(
                        "Images/burger.jpg", "Burger", "\$200"),
                    homegridviewcontainer(
                        "Images/pizza2.jpg", "Pizza", "\$300"),
                    homegridviewcontainer(
                        "Images/pizza2.jpg", "Drink", "\$400"),
                    homegridviewcontainer(
                        "Images/pizza2.jpg", "Fries", "\$100"),
                    homegridviewcontainer(
                        "Images/pizza2.jpg", "Water", "\$300"),
                    homegridviewcontainer(
                        "Images/pizza2.jpg", "Large Pizza", "\$200")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
