import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate());
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                      child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 50),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  fieldBox("First Name", "Please enter your First Name"),
                  SizedBox(
                    height: 20,
                  ),
                  fieldBox("Last Name", "Please enter your Last Name"),
                  SizedBox(
                    height: 20,
                  ),
                  fieldBox("Email", "Please enter your Email"),
                  SizedBox(
                    height: 20,
                  ),
                  fieldBox("Password", "Please enter your Password"),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 40),
                     InkWell(
      onTap: ()=>moveToHome(context),
      child: Container(
        width: 150,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Text("Cancel", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
    ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
      onTap: ()=>moveToHome(context),
      child: Container(
        width: 150,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Text("Register", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
    )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

  Widget fieldBox(@required String hintname, String validtext) {
    return Container(
      width: 250,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validtext;
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: hintname,
            border:
                UnderlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }


