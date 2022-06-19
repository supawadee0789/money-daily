import 'package:flutter/material.dart';
import 'package:money_daily/addCategory/add_button.dart';
import 'package:money_daily/addCategory/icon_dialog.dart';
import 'package:money_daily/addCategory/income_expense.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonStyle = ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(500, 50)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Text(
                "Add your fav",
                style: Theme.of(context).textTheme.headline1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AddButton(
                          onTap: () => {
                                showDialog<void>(
                                    context: context,
                                    barrierDismissible:
                                        false, // user must tap button!
                                    builder: (BuildContext context) =>
                                        IconDialog())
                              }),
                      Column(
                        children: const [
                          SizedBox(
                              width: 100,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Type Name',
                                ),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          IncomeExpenseButton()
                        ],
                      )
                    ]),
              ),
              OutlinedButton(
                style: buttonStyle,
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('CANCEL'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () => {},
                child: const Text('ADD'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
