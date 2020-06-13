import 'package:flutter/material.dart';
import 'Drawer.dart';

class TwitterFeeds extends StatefulWidget {
  @override
  _TwitterFeedsState createState() => _TwitterFeedsState();
}

class _TwitterFeedsState extends State<TwitterFeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Twitter Feeds",
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.search
            ),
            onPressed: (){
              //
            },
          ),
        ],
      ),
      drawer: navDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  cardHeader(),
                  cardBody(),
                  Divider(
                    color: Colors.grey,
                  ),
                  cardFooter()
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget cardHeader(){
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 24.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Christina Meyers",
                  style: TextStyle(
                      fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "@ch_meyers",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Fri, 12 May, 2017 . 14:30",
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget cardBody(){
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: Text(
        "We also talk about the future of work as the robots advance, and we ask whether a rtro phone",
        style: TextStyle(
          height: 1.75,
          fontSize: 16.0
        ),
      ),
    );
  }

  Widget cardFooter(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.repeat), onPressed: (){}, color: Colors.orange,),
            Text(
              "25",
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text(
                "SHARE",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            FlatButton(
              child: Text(
                "OPEN",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

}
