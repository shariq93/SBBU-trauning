import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  // runApp(MyApp());
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  String name = "";
  String password = "";
  List prods = [
    {
      "name":'My Priduct Name',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/carts.png",
                width: 100,
                height: 100,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    "My Shoping Mall",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "We deliver promisses",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) => {name = value},
                  decoration: const InputDecoration(
                    labelText: "Username",
                    hintText: 'Enter your username',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) => {password = value},
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: 'Enter your password',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        String errors = "";
                        print("name: $name, password: $password");
                        // if (name == "admin") {
                        //   if (password == 'abc123') {
                        //      } else {
                        //     errors = "Invalid Password";
                        //   }
                        // } else {
                        //   errors = "User not found";
                        // }
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                         
                        // if (errors != "") {
                        //   showDialog(
                        //       context: context,
                        //       builder: (ctx) {
                        //         return AlertDialog(
                        //           title: Text("Alert!"),
                        //           content: Text(errors),
                        //           actions: [
                        //             TextButton(
                        //                 onPressed: () {
                        //                   Navigator.pop(context);
                        //                 },
                        //                 child: Text("Okay!"))
                        //           ],
                        //         );
                        //       });
                        // }
                      },
                      child: Text("Login"),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
