import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'HeadlineNews.dart';
import 'Twitter.dart';
import 'InstagramFeeds.dart';
import 'NavigationMenu.dart';

class navDrawer extends StatefulWidget {
  @override
  _navDrawerState createState() => _navDrawerState();
}

class _navDrawerState extends State<navDrawer> {

  List<NavMenu> navMenu = [
    NavMenu(
      title: "Explore",
      destination: () => HomeScreen(),
    ),
    NavMenu(
      title: "Headline News",
      destination: () => HeadlineNews(),
    ),
    NavMenu(
      title: "Twitter Feeds",
      destination: () => TwitterFeeds(),
    ),
    NavMenu(
      title: "Instagram Feeds",
      destination: () => InstagramFeeds(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0),
        child: ListView.builder(
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  navMenu[index].title,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 20.0
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade300,
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => navMenu[index].destination()
                  ));
                },
              ),
            );
          },
          itemCount: navMenu.length,
        ),
      ),
    );
  }
}
