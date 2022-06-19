import 'package:flutter/material.dart';

class IconDialog extends StatelessWidget {
  const IconDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          'Select avatar',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      content: Column(children: []),
      actions: [
        TextButton(
          child: const Text('ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
