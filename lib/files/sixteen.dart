// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SixteenPage extends StatelessWidget {
  SixteenPage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  _showSnackBar() {
    _scaffoldKey.currentState?.showSnackBar(const SnackBar(
      content: Text('An unexpected error occurred: Error!'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Content goes here.',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            icon: const Icon(Icons.explicit),
            label: const Text("Throw Error"),
            onPressed: () => _showSnackBar(),
            tooltip: 'Throw Error'));
  }
}
