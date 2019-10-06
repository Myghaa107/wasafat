import 'package:flutter/material.dart';
import '../generated/i18n.dart';
import '../widgets/drawer_menu.dart';

class FilterScreen extends StatelessWidget {
  static String routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).Filter),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Text(S.of(context).Filter),
      ),
    );
  }
}
