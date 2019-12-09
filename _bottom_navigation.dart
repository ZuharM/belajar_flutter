import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Bottom Navigation',
    debugShowCheckedModeBanner: false,
    home: BottomNavPage(),
  ));
}

class BottomNavPage extends StatefulWidget{
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage>{
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index){
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      Text('Halaman Home'),
      Text('Halaman Pesan'),
      Text('Halaman Keranjang'),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home')
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text('Pesan')
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text('Keranjang')
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}