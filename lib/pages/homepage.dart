import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  HomePageState();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue[300],
          title: TextField(
            decoration: InputDecoration(hintText: "搜索")
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.search))
          ],        
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child :Column(
                children: <Widget>[
                  //四个分类按钮
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(    
                              onTap: () {},
                              child: Center(child: Container(child: Image.asset("images/3.jpeg",width:60,fit: BoxFit.scaleDown ,)))),
                          InkWell(
                              onTap: () {},
                              child: Container(child: Image.asset("images/3.jpeg",width:60,fit: BoxFit.scaleDown))),
                          InkWell(
                              onTap: () {},
                              child: Container(child: Image.asset("images/3.jpeg",width:60,fit: BoxFit.scaleDown))),
                          InkWell(
                              onTap: () {},
                              child: Container(child: Image.asset("images/3.jpeg",width:60,fit: BoxFit.scaleDown))),
                        ],
                      ),
                  ),
                    //买或卖
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          InkWell(
                              onTap: () {},
                              child: Container(child: Image.asset("images/2.png"))),
                          InkWell(
                              onTap: () {},
                              child: Container(child: Image.asset("images/2.png")))
                        ],
                      ),
                    )
                ],
              )          
            ),
            SliverPadding(
              padding: EdgeInsets.all(2.0),
              sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                      );
                    },
                    childCount: 2,
                  ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0)),

              //推荐商品
            ),
          ],
        ),
      ),
    );
  }
}
