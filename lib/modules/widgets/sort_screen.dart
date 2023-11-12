import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SortScreen extends StatelessWidget {
  const SortScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Center(
          child: Text(
            'Sort',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(FontAwesomeIcons.xmark,color: Colors.black,),
          ),
        ],
      ),

    );
  }
}
