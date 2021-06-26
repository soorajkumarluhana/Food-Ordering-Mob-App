import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            Center(
              child: Container(
                child: Image.asset(
                  "Images/LoginPage.jpg",
                  height: 200,
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Container(
                width: 300,
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Your Email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0), 
                              ),
                            ),
                            hintText: "Email",
                            labelText: "Email"),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Your Password";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            hintText: "Password",
                            labelText: "Password"),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () =>moveToHome(context),
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          Text("New user ?"),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Register Now",
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
