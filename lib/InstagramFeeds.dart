import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Drawer.dart';

class InstagramFeeds extends StatefulWidget {
  @override
  _InstagramFeedsState createState() => _InstagramFeedsState();
}

class _InstagramFeedsState extends State<InstagramFeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram Feeds",
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
                  cardFooter(),
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
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
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
              )
            ],
          ),
          Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                  onPressed: (){
                    //
                  }
                  ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "25",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardBody(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Text(
            "We also talk about the future of work as the robots",
            style: TextStyle(
                height: 1.75,
                fontSize: 16.0
            ),
          ),
        ),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text(
                "advance",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0
                ),
              ),
              onPressed: (){
                //
              },
            ),
            FlatButton(
              child: Text(
                "advance",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0
                ),
              ),
              onPressed: (){
                //
              },
            ),
            FlatButton(
              child: Text(
                "advance",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0
                ),
              ),
              onPressed: (){
                //
              },
            ),
          ],
        ),
        Container(
          height: 220.0,
          width: double.infinity,
          color: Colors.black,
        ),
      ],
    );
  }

  Widget cardFooter(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          child: Text(
            "10 Comments",
            style: TextStyle(
                fontSize: 16.0
            ),
          ),
        ),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text(
                "SHARE",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0
                ),
              ),
            ),
            FlatButton(
              child: Text(
                "OPEN",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

}
