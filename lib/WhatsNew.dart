import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          drawHeader(),
          drawSectionTitle("Top Stories"),
          drawSingleRow(),
          drawDivider(),
          drawSingleRow(),
          drawDivider(),
          drawSingleRow(),
          drawDivider(),
          drawSectionTitle("Recent Updates"),
          drawRecentUpdatesCard(),
          drawDivider(),
          drawRecentUpdatesCard(),
          SizedBox(
            height: 48.0,
          ),
        ],
      ),
    );
  }

  Widget drawHeader() {

    TextStyle headerStyle = TextStyle(
      color: Colors.white,
      fontSize: 22.0,
      fontWeight: FontWeight.w600
    );
    TextStyle descriptionStyle = TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    );

    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 48.0, right: 48.0),
            child: Text(
              "How Terriers & Royals Gatecrashed Final",
              style: headerStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36.0, right: 36.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consecteture adipiscing elit, sed do euismod",
              style: descriptionStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget drawSectionTitle(String title) {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 16.0,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget drawSingleRow(){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 125.0,
                    height: 125.0,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 6.0,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "The World Global Warmaing Anuual Summit",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Michael Adams",
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.timer),
                              Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: Text(
                                  "15 min ago",
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget drawDivider(){
    return Container(
      height: 1.0,
      width: double.infinity,
      color: Colors.grey.shade100,
    );
  }

  drawRecentUpdatesCard() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8.0, bottom: 8.0),
              child: Container(
                width: 100.0,
                height: 25.0,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(4.0)
                ),
                child: Text(
                  "Sport",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: Text(
                "Vettle Is Ferrari Number 1 - Hamilton",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.timer,
                    size: 18.0,
                      color: Colors.grey
                  ),
                  Text(
                    "15 min ago",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}