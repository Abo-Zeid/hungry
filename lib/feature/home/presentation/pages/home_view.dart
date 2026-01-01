import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/feature/home/presentation/widgets/card_item.dart';
import 'package:hungry/feature/home/presentation/widgets/category_widget.dart';
import 'package:hungry/feature/home/presentation/widgets/header_widget.dart';
import 'package:hungry/feature/home/presentation/widgets/serch_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> category = [
    "All",
    "Combo",
    "Sliders",
    "Clasic",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: false,
              pinned: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              scrolledUnderElevation: 0,
              toolbarHeight: 174,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  children: [
                    HeaderWidget(),
                    const Gap(10),
                    SerchWidget(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: 70,
                  child: CategoryWidget(
                    selectedIndex: selectedIndex,
                    category: category,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 6,
                  (context, index) {
                    return CardItem(
                      itemNme: "Cheeseburge",
                      imageName: "assets/test/test1.png",
                      itemDesc: "Wendy's burger",
                      itemRate: "4.9",
                    );
                  },
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.71,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
