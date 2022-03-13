import 'package:flutter/material.dart';
//import 'dart:html';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
    // TODO: implement build
    //throw UnimplementedError();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("注册"),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Column(
              children: [
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
          ],
        )),
      ),
    );
  }
}
