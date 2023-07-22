import 'package:flutter/material.dart';

showNewNoteDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title:
            const Text('Add New Note'), // To display the title it is optional
        content: const SizedBox(
            width: 250,
            child: TextField(
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'New Note',
              ),
            )),
        actions: [
          TextButton(
            // FlatButton widget is used to make a text to work like a button
            onPressed: () {
              Navigator.of(context).pop();
            }, // function used to perform after pressing the button
            child: const Text('CANCEL'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('ADD'),
          ),
        ],
      );
    },
  );
}
