import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dicegame/s_dice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Log ins"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Builder(
        builder: ( context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                      child: Image(
                        image: AssetImage("assets/images/chef.gif"),
                        width: 170.0,
                        height: 190.0,
                      )),
                  Form(
                    child: Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          inputDecorationTheme: InputDecorationTheme(
                              labelStyle:
                              TextStyle(color: Colors.teal, fontSize: 15.0))),
                      child: Container(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          children: [
                            TextField(
                              controller: controller,
                              decoration: InputDecoration(labelText: "Enter Dice"),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controller2,
                              decoration:
                              InputDecoration(labelText: "Enter password"),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(height: 30),
                            ButtonTheme(
                              minWidth: 100,
                              height: 50.0,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (controller.text == "dice" &&
                                      controller2.text == "1234") {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) => Dice()),
                                    );
                                  }else if(controller.text == "dice" &&
                                      controller2.text != "1234"){
                                    showSnackbar(context);
                                  }else if(controller.text != "dice" &&
                                      controller2.text == "1234"){
                                    showSnackbar(context);
                                  }else {
                                    showSnackbar(context);
                                  }
                                },
                                child: Icon(Icons.arrow_forward),
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
        },
      ),
    );
  }
}

void showSnackbar(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("로그인 정보를 다시 확인 하세요"))
  );
}
