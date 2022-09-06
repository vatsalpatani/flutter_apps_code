// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class TwentyfivePage extends StatelessWidget {
  const TwentyfivePage({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
          labelStyle: TextStyle(
            color: Colors.blueGrey,
          ),
        ),
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _textEditingControllers = [];
  final List<Widget> _widgets = [];
  HomeWidget({Key? key}) : super(key: key) {
    List<String> fieldNames = [
      "First Name",
      "Last Name",
      "Address 1",
      "Address 2",
      "City",
      "State",
      "Zip"
    ];
    for (int i = 0, ii = fieldNames.length; i < ii; i++) {
      String fieldName = fieldNames[i];
      TextEditingController textEditingController =
          TextEditingController(text: "");
      _textEditingControllers.add(textEditingController);
      _widgets.add(Padding(
        padding: const EdgeInsets.all(10.0),
        child: _createTextFormField(fieldName, i > 1, textEditingController),
      ));
    }
    _widgets.add(RaisedButton(
      onPressed: () {
        _formKey.currentState?.validate();
      },
      child: const Text('Save'),
    ));
  }
  TextFormField _createTextFormField(
      String fieldName, bool enabled, TextEditingController controller) {
    return TextFormField(
        enabled: enabled,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter $fieldName.';
          }
          return null;
        },
        decoration: InputDecoration(
            icon: const Icon(Icons.person),
            hintText: fieldName,
            labelText: 'Enter $fieldName'),
        controller: controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Input Decoration Themes"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: ListView(
                  children: _widgets,
                ))));
  }
}
