import 'package:flutter/material.dart';
import 'package:tasktwo/Widgets/package.dart';

class PackageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Package',
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, i) => Package(),
          itemCount: 5,
        ));
  }
}
