

import 'package:flutter/material.dart';
dynamic nextpage(BuildContext context, [Widget pagename = const DefaultPage()]) {
 Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pagename),
      );
    }
  

dynamic pagereplace(BuildContext context, [Widget pagename = const DefaultPage()]) {
 Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => pagename),
      );
    }
  


class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:Text('No Screen Found')
      ),
    );
  }
}