import 'package:flutter/material.dart';
import '../generated/i18n.dart';
import './categories_screen.dart';
import './favorite_screen.dart';
import '../widgets/drawer_menu.dart';

class BottomTabsScreen extends StatefulWidget {
  @override
  _BottomTabsScreenState createState() => _BottomTabsScreenState();
}

class _BottomTabsScreenState extends State<BottomTabsScreen> {

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final List<Map<String, Object>> _pages = [
      {'page': CategoriesScreen(), 'title': S.of(context).Categories},
      {'page': FavoriteScreen(), 'title': S.of(context).Favorite},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'], style: TextStyle(fontSize: 18),),
      ),
      drawer: Drawer(
        elevation: 16,
        child: DrawerMenu(),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        //type: BottomNavigationBarType.shifting,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
