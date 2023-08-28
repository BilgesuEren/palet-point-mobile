import 'package:flutter/material.dart';
import 'package:my_app/view/widget/bottom_navigation.dart';
import 'home.dart';
import 'proposal/proposal.dart';
import 'widget/app_bar/top_app_bar_large.dart';
import 'widget/index_list_tile.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 110),
        child: TopAppBarLarge(
          title: "Ana Sayfa",
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const Home(),
          const Proposal(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
