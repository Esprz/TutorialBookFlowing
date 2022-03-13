//import 'dart:html';

//import 'dart:html';

import 'package:experimental_project/pages/app_bottom_bar.dart';
import 'package:experimental_project/pages/homepage.dart';
import 'package:experimental_project/pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        //child: Image(image: AssetImage("images/1.png", ),),
                        child: Image.asset(
                          'images/1.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "用户名",
                              hintText: "请输入您的用户名",
                              prefixIcon: Icon(Icons.person)),
                          textInputAction: TextInputAction.next,
                          //onChanged: ,
                          //controller: _emailController,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "密码",
                            hintText: "请输入您的密码",
                            prefixIcon: const Icon(Icons.person)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      //padding: const EdgeInsets.all(30.0),
                      height: 50.0,
                      width: 200.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new AppBarPage()),
                          );
                        },
                        child: Text('登录'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        children: <Widget>[
                          const Text('没有账号？'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new RegisterPage()),
                                );
                              },
                              child: Text('立即注册')),
                        ],
                      ),
                    ),
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
