import 'package:bonappetit/src/const/app_theme.dart';
import 'package:bonappetit/src/utils/colors.dart';
import 'package:bonappetit/src/views/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  final VoidCallback openDrawer;
  final bool isDrawerOpen;

  const Orders({Key? key, required this.openDrawer, required this.isDrawerOpen})
      : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          color: Colors.transparent,
          child: AppBarWidget(
            openDrawer: widget.openDrawer,
            isDrawerOpen: widget.isDrawerOpen,
            textOne: "Deliver to",
            textTow: "4102 Pretty View Lone",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                "What would you like to order",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kBlackColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text("Seacr"),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: kGreyColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: kGreyColor.withOpacity(.5),
                      ),
                      Text(
                        "Plat prefere...",
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            color: kGreyColor.withOpacity(.5),
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
              // FloatingSearchBar(
              //   builder: (BuildContext context, Animation<double> transition) =>
              //       const SearchResultsListView(searchTerm: null),
              // ),
              const SizedBox(height: 10),

              Container(
                height: 120,
                width: 70,
                decoration: BoxDecoration(
                  color: kPrimary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: kWhiteGreyColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.food_bank,
                          color: kPrimary,
                        ),
                      ),
                    ),
                    Text(
                      "Burger",
                      style: themeData.textTheme.bodySmall!.copyWith(
                        color: kWhiteGreyColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SearchResultsListView extends StatelessWidget {
  final String? searchTerm;
  const SearchResultsListView({Key? key, this.searchTerm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (searchTerm == null) {
      return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Icon(
            Icons.search,
            size: 64,
          ),
          Text(
            "Start searching",
            style: Theme.of(context).textTheme.headline5,
          )
        ]),
      );
    }

    return ListView(
      children: List.generate(
        50,
        (index) => ListTile(
          title: Text('$searchTerm search result'),
        ),
      ),
    );
  }
}
