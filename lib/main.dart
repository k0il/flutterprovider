import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_model.dart';
import 'app_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final appState = Provider.of<AppState>(context);
    /*return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: MyHomePage(),
        home: MyHomePage());*/
    return ChangeNotifierProvider<Appmodel>.value(
      value: Appmodel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final apppstate = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Appview(),
          ],
        ),
      ),
    );
  }
}
