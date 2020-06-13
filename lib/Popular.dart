import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return drawSingleRow();
      },
      itemCount: 20,
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
}
