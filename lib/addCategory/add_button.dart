import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final Function() onTap;
  const AddButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(121, 144, 121, 112)),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.add_box_rounded),
              ),
              Text('Add')
            ],
          ),
        ),
      ),
    );
  }
}
