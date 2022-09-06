// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NinetennPage extends StatelessWidget {
  const NinetennPage({Key? key}) : super(key: key);
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
