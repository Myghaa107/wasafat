import 'package:flutter/material.dart';

import '../generated/i18n.dart';
import '../screens/filter_screen.dart';

class DrawerMenu extends StatelessWidget {
  Widget buildListTile(BuildContext context, IconData iconData, String text,
      Function tabHandler) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 26,
        color: Colors.black,
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
      onTap: tabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Directionality.of(context) == TextDirection.ltr
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Text(
              S.of(context).Wasafat,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            context,
            Icons.restaurant,
            S.of(context).Meals,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            context,
            Icons.settings,
            S.of(context).Filter,
            () {
              Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
