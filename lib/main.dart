import 'package:cupertino_tab_bar/page1.dart';
import 'package:cupertino_tab_bar/page1b.dart';
import 'package:cupertino_tab_bar/page1c.dart';
import 'package:cupertino_tab_bar/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino Tab Bar Demo',
      theme: ThemeData(primarySwatch: Colors.blue, textTheme: TextTheme()),
      home: SafeArea(child: Scaffold(body: MyHomePage('Cupertino Tab Bar Demo Home Page'))),
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
  var navigatorKeyList = [GlobalKey<NavigatorState>(), GlobalKey<NavigatorState>()];
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
          BottomNavigationBarItem(title: Text('Tab 1'), icon: Icon(Icons.ac_unit)),
          BottomNavigationBarItem(title: Text('Tab 2'), icon: Icon(Icons.ac_unit)),
        ],
      ),
      tabBuilder: (BuildContext _, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              navigatorKey: navigatorKeyList[index],
              routes: {
                '/': (context) => WillPopScope(
                      child: Page1(),
                      onWillPop: () => Future<bool>.value(true),
                    ),
                'page1b': (context) => Page1b(),
                'page1c': (context) => Page1c(),
              },
            );
          case 1:
            return CupertinoTabView(
              navigatorKey: navigatorKeyList[index],
              routes: {
                '/': (context) => WillPopScope(
                      child: Page2(controller),
                      onWillPop: () => Future<bool>.value(true),
                    )
              },
            );
          default:
            return Text('Index must be less than 2');
        }
      },
    );
  }
}
