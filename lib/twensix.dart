// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Twentsix extends StatefulWidget {
  const Twentsix({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _TwentsixState createState() => _TwentsixState();
}

class _TwentsixState extends State<Twentsix> {
  bool _checked = false;
  void _onCheck(val) {
    setState(() {
      _checked = val;
    });
  }

  void _onSubmit() {
    debugPrint("_onSubmit");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text('Please check below to agree to the terms.',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Checkbox(value: _checked, onChanged: (val) => _onCheck(val)),
                const Text("I agree")
              ]),
              OutlinedButton(
                onPressed: _checked ? () => _onSubmit() : null,
                child: const Text('Register'),
              )
            ],
          ),
        ));
  }
}
