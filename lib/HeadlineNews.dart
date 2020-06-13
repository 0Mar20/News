import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'Favourites.dart';
import 'Popular.dart';

class HeadlineNews extends StatefulWidget {
  @override
  _HeadlineNewsState createState() => _HeadlineNewsState();
}

class _HeadlineNewsState extends State<HeadlineNews> with TickerProviderStateMixin {

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
            "Headline News",
          ),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              onPressed: (){
                //
              },
              icon: Icon(Icons.search),
            )
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
            Favourites(),
            Popular(),
            Favourites(),
          ],
          controller: _tabController,
        )
    );
  }
}
