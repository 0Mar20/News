import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    authorRow(),
                    SizedBox(
                      height: 8.0,
                    ),
                    newsItemRow(),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }

  Widget authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 16.0),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Michael Adams",
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "15 min ago .",
                    ),
                    Text(
                      "Life Style",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(icon: Icon(Icons.bookmark_border), onPressed: (){})
      ],
    );
  }

  Widget newsItemRow() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16.0),
          width: 100.0,
          height: 100.0,
          color: Colors.black87,
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                "Tech Tent: Old Phones And Safe Social",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text(
                "We also talk about the future of work as the robots advance, and we ask whether a rtro phone",
                style: TextStyle(
                  color: Colors.grey,
                  height: 1.5
                ),
              ),
          ],
          ),
        ),
      ],
    );
  }
}
