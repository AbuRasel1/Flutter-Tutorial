
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TabBar File/AccounTabBar.dart';
import 'TabBar File/ContactTabBar.dart';
import 'TabBar File/EmailTabBar.dart';
import 'TabBar File/HomeTabBar.dart';
import 'TabBar File/PeopleTabBar.dart';
import 'TabBar File/SearchTabBar.dart';
import 'TabBar File/SettingTabBar.dart';

main(){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }

}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar:  AppBar(
            title: Text("This is a TabBar part"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.email),text: 'Email', ),
                Tab(icon: Icon(Icons.people),text: 'People',),
                Tab(icon: Icon(Icons.settings),text: 'Settings',),
                Tab(icon: Icon(Icons.search),text: ('Search'),),
                Tab(icon: Icon(Icons.account_box),text: 'Account',),
                Tab(icon: Icon(Icons.contact_mail),text: ('Contact'),),

              ],





            ),
          ),

          body:TabBarView(
            children: [
              Home(),
              Email(),
              People(),
              Setting(),
              Search(),
              AccountTabBar(),
              Contact()
            ],
          ),

        ));
  }

}