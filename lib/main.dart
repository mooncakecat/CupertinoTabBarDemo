import 'package:cupertino_tab_bar/page1.dart';
import 'package:cupertino_tab_bar/page2b.dart';
import 'package:cupertino_tab_bar/page3.dart';
import 'package:cupertino_tab_bar/page2.dart';
import 'package:cupertino_tab_bar/page3b.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino Tab Bar Demo',
      theme: ThemeData(primarySwatch: Colors.blue, textTheme: TextTheme()),
      home: SafeArea(
          child:
              Scaffold(body: MyHomePage('Cupertino Tab Bar Demo Home Page'))),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(this.title);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var navigatorKeyList = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];
  var currentIndex = 0;
  var controller = CupertinoTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: controller,
      tabBar: CupertinoTabBar(
        onTap: (index) {
          if (currentIndex == index) {
            // Navigate to the tab's root route
            navigatorKeyList[index].currentState.popUntil((route) {
              return route.isFirst;
            });
          }
          currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
              title: Text('Tab 1'), icon: Icon(Icons.ac_unit)),
          BottomNavigationBarItem(
              title: Text('Tab 2'), icon: Icon(Icons.access_alarm)),
          BottomNavigationBarItem(
              title: Text('Tab 3'), icon: Icon(Icons.add_a_photo)),
        ],
      ),
      tabBuilder: (BuildContext _, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              navigatorKey: navigatorKeyList[index],
              routes: {
                '/': (context) => WillPopScope(
                      child: Page1(controller),
                      onWillPop: () => Future<bool>.value(true),
                    ),
                'page2b': (context) => Page2b(),
                'page3b': (context) => Page3b(),
              },
            );
          case 1:
            return CupertinoTabView(
              navigatorKey: navigatorKeyList[index],
              routes: {
                '/': (context) => WillPopScope(
                      child: Page2(),
                      onWillPop: () => Future<bool>.value(true),
                    ),
                'page2b': (context) => Page2b(),
              },
            );
          case 2:
            return CupertinoTabView(
              navigatorKey: navigatorKeyList[index],
              routes: {
                '/': (context) => WillPopScope(
                      child: Page3(),
                      onWillPop: () => Future<bool>.value(true),
                    ),
                'page3b': (context) => Page3b(),
              },
            );
          default:
            return Text('Index must be less than 2');
        }
      },
    );
  }
}
