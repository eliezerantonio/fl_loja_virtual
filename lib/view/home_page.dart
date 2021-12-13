import 'package:flutter/material.dart';

import 'layout.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    var content = Column();
    return Layout.render(
      context,
      content,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {},
      ),
     );
  }
}
