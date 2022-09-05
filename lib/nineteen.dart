// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const TableApp());

class TableApp extends StatelessWidget {
  const TableApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const TableRow tableRow = TableRow(children: [
      Text("aaaaa", overflow: TextOverflow.fade),
      Text("bbbbb", overflow: TextOverflow.fade),
      Text("ccccc", overflow: TextOverflow.ellipsis)
    ]);
    return Scaffold(
        appBar: AppBar(title: const Text("Table")),
        body: Table(
          children: [
            tableRow,
            tableRow,
            tableRow,
            tableRow,
            tableRow,
            tableRow,
            tableRow,
            tableRow,
            tableRow,
          ],
          columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(0.1),
            1: FlexColumnWidth(0.3),
            2: FlexColumnWidth(0.6),
          },
          border: TableBorder.all(),
        ) // end table,
        );
  }
}
