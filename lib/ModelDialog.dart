// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

class ModelDialog extends StatefulWidget {
  const ModelDialog(
      {super.key, required this.modelStrings, required this.modelCallback});

  final List<String> modelStrings;
  final ValueChanged<String> modelCallback;

  @override
  _ModelDialogState createState() => _ModelDialogState();
}

class _ModelDialogState extends State<ModelDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ListView.builder(
          itemCount: widget.modelStrings.length,
          itemBuilder: (BuildContext context, int index) {
            var modelString = widget.modelStrings[index];
            return ListTile(
              onTap: () {
                widget.modelCallback(modelString);
                Navigator.pop(context);
              },
              title: Text(modelString),
            );
          }),
    );
  }
}
