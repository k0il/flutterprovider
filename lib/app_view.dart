import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_model.dart';

class Appview extends StatefulWidget {
  @override
  _AppviewState createState() => _AppviewState();
}

class _AppviewState extends State<Appview> {
  @override
  Widget build(BuildContext context) {
    final Appmodel blockmodel = Provider.of<Appmodel>(context);
    return Container(
      child: Column(
        children: <Widget>[
          Text(blockmodel.getTextCenter),
          SizedBox(height: 20.0),
          MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
              blockmodel.gantiTextsatu();
            },
            color: Colors.lightBlueAccent,
            child: Text('Ganti Text 1', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 20.0),
          MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
              blockmodel.gantiTextdua();
            },
            color: Colors.lightBlueAccent,
            child: Text('Ganti Text 2', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
