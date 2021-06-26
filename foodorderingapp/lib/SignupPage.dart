import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
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
                    color: Colors.white,
                    fontSize: 50),
              )),
              SizedBox(
                height: 20,
              ),
              fieldBox("Email"),
              SizedBox(
                height: 20,
              ),
              fieldBox("Username"),
              SizedBox(
                height: 20,
              ),
              fieldBox("Password"),
              SizedBox(
                height: 20,
              ),
              fieldBox("Confirm Password"),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(width: 40),
                  button("Cancel", Colors.white),
                  SizedBox(width: 15,),
                  button("Register", Colors.red),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget fieldBox(@required String hintname) {
  return Container(
    width: 250,
    child: TextFormField(
      decoration: InputDecoration(
          hintText: hintname,
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(20))),
    ),
  );
}

Widget button(@required String text, Color color) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(
        color: color,
      borderRadius: BorderRadius.circular(50),
      ),
      child: Center(child:Text(text)),
    ),
  );
}
