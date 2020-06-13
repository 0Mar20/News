import 'package:flutter/material.dart';
import 'WhatsNew.dart';
import 'Popular.dart';
import 'Favourites.dart';
import 'Drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //
            },
            icon: Icon(Icons.search),
          ),IconButton(
            onPressed: (){
              //
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "WHATS NEW",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "POPULAR",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "FAVOURITES",
              ),
            ),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
      ),
      drawer: navDrawer(),
      body: TabBarView(
        children: <Widget>[
          WhatsNew(),
          Popular(),
          Favourites(),
        ],
        controller: _tabController,
      )
    );
  }
}
