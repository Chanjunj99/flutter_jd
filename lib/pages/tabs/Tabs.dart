import 'package:flutter/material.dart';
import 'Home.dart';
import 'Cart.dart';
import 'Category.dart';
import 'User.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List pageList=[
    HomePage(),
    CategoryPage(),
    CartPage(),
    UserPage()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: Text('京东商城')
        ),
        body: this.pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (index){
            setState(() {
              this._currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // title: Text('首页')
              label: '首页'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: '分类'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '购物车'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: '我的'
            )
          ],
        ),
      )
    );
  }
}