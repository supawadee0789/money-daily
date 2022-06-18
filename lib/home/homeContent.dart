import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../addCategory/add_button.dart';
import '../navigationBloc/navbloc_bloc.dart';
import 'categoryItem/catagory_item.dart';
import 'categoryItem/item.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = [
      Item(name: 'food', icon: 'spaghetti', type: 'expense'),
      Item(name: 'long long long name', icon: 'vegetable', type: 'expense')
    ];
    return BlocListener<NavBloc, NavblocState>(
      listener: (context, state) {
        if (state is StateAddCategory) {
          Navigator.of(context).pushNamed('/addCategory');
        }
      },
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text("Money daily",
                  style: Theme.of(context).textTheme.headline1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Categories ⭐⭐⭐"),
                ElevatedButton(onPressed: () => {}, child: const Text('edit'))
              ],
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(5),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  for (Item i in item)
                    CategoryItem(
                      item: i,
                    ),
                  AddButton(
                      onTap: () =>
                          context.read<NavBloc>().add(EventAddCategory())),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
