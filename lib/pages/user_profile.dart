import 'package:experimental_project/pages/my_product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("昵称昵称昵称i成"),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.build))
          ]),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              //height: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.width) * 0.3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //头像
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 105, 150, 187),
                                width: 3),
                            borderRadius: BorderRadius.circular(900)),
                        child: ClipOval(
                          child: Image.asset(
                            "images/4.jpeg",
                          ),
                        ),
                      ),
                    ),
                    //昵称
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "昵称昵称昵称昵称",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(10.0),
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MyProductListPage()));
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 30,
                        ),
                        Text('在售')
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite_outline_outlined,
                          size: 30,
                        ),
                        Text('收藏')
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Icon(
                          Icons.assessment_outlined,
                          size: 30,
                        ),
                        Text('订单')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
