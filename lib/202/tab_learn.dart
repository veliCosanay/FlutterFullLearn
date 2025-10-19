import 'package:flutter/material.dart';
import 'package:flutter_learn_01/101/card_learn.dart';
import 'package:flutter_learn_01/101/stack_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _TabBars.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _TabBars.values.length,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_TabBars.card.index);
          },
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: _myTabView(),
        ),
        body: _myTabBarView(),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
      controller: _tabController,
      tabs: _TabBars.values
          .map((e) => Tab(text: e.name.toUpperCase()))
          .toList(),
    );
  }

  TabBarView _myTabBarView() {
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [CardLearn(), StackLearn()],
    );
  }
}

enum _TabBars { card, stack }
