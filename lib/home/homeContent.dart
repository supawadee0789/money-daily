import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
      Item(name: 'food', icon: 'spaghetti', type: ItemType.expense),
      Item(
          name: 'long long long name',
          icon: 'vegetable',
          type: ItemType.expense)
    ];
    return BlocListener<NavBloc, NavblocState>(
      listener: (context, state) {
        if (state is StateAddCategory) {
          Navigator.of(context).pushNamed('/addCategory');
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 85, 25, 0),
        child: Column(
          children: [
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
                    ).animate().scale(),
                  AddButton(
                          onTap: () =>
                              context.read<NavBloc>().add(EventAddCategory()))
                      .animate()
                      .scale(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
