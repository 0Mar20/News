import 'package:flutter/material.dart';
import 'package:news/HomeScreen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'PageModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Introduce extends StatefulWidget {
  @override
  _IntroduceState createState() => _IntroduceState();
}

class _IntroduceState extends State<Introduce> {

  List<PageModel> pages;

  ValueNotifier<int> pageViewNotifier = ValueNotifier(0);

  void _addPage(){
    pages = <PageModel> [];
    pages.add(PageModel(Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
    ),
      Icons.ac_unit, "Welcome", "1- Making friends is easy as waving your hand back and forth in easy step",));
    pages.add(PageModel(Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
      ),
    ),
      Icons.access_alarms, "Alarm", "2- Making friends is easy as waving your hand back and forth in easy step",));
    pages.add(PageModel(Container(
      decoration: BoxDecoration(
        color: Colors.indigo,
      ),
    ),
      Icons.print, "Print", "3- Making friends is easy as waving your hand back and forth in easy step",));
    pages.add(PageModel(Container(
      decoration: BoxDecoration(
        color: Colors.amberAccent,
      ),
    ),
      Icons.map, "Map", "4- Making friends is easy as waving your hand back and forth in easy step",));
  }

  @override
  Widget build(BuildContext context) {

    _addPage();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(itemBuilder: (context, index){
            return Stack(
              children: <Widget>[
                pages[index].container,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Transform.translate(
                      child: Icon(
                        pages[index].icon,
                        size: 150,
                        color: Colors.white,
                      ),
                      offset: Offset(0, -100),
                    ),
                    Text(
                      pages[index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0, right: 48.0, top: 8.0),
                      child: Text(
                        pages[index].description,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            );
          },
            itemCount: pages.length,
            onPageChanged: (index){
              pageViewNotifier.value = index;
            },
          ),
          Transform.translate(
            offset: Offset(0, 175),
            child: Align(
                alignment: Alignment.center,
                child: displayPageIndicator(pages.length)
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0, left: 16.0, right: 16.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                    updateSeen();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen()
                    ));
                  },
                  color: Colors.red.shade800,
                  child: Text(
                    "Get started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget displayPageIndicator(int length){
    return PageViewIndicator(
      pageIndexNotifier: pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.white,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  void updateSeen() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("seen", true);
  }
}
