import 'package:flutter/material.dart';

class IncomeExpenseButton extends StatelessWidget {
  const IncomeExpenseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 15),
          child: OutlinedButton(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(50, 75)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)))),
            onPressed: () => {},
            child: const Text('income'),
          ),
        ),
        OutlinedButton(
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(50, 75)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)))),
          onPressed: () => {},
          child: const Text('expense'),
        ),
      ],
    );
  }
}
