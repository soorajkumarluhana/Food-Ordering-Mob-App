import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodorderingapp/Widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('posts').snapshots();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                CircleAvatar(backgroundImage: AssetImage("Images/Picture.jpg")),
          ),
        ],
      ),
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
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return Container(
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
                    homerowcontainer(data["image"], data["name"]),
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
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
