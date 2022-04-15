import 'package:expandable_listview_example/page/advanced_tile_page.dart';
import 'package:expandable_listview_example/page/basic_tile_page.dart';
import 'package:expandable_listview_example/page/text_tile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'FAQ';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: buildPages(), //building the acutal page that it will show up on
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return BasicTilePage();
      case 1:
        return BasicTilePage();
      case 2:
        return AdvancedTilePage();
      default:
        return Container();
    }
  }
}
