import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/view/invoice_view/invoice_view.dart';
import 'package:my_app/view/order_view/order_view.dart';
import 'package:my_app/view/widget/bottom_navigation.dart';
import 'home.dart';
import 'proposal_view/proposal_view.dart';
import 'widget/app_bar/top_app_bar_large.dart';


class Index extends ConsumerStatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IndexState();
}

class _IndexState extends ConsumerState<Index>  {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState(){
    // if (mounted) {
    //   setState(() {
    //     _selectedIndex = 0;
    //   });
    // }
    super.initState();
  }

  @override
  void dispose(){
    // if (mounted) {
    //   setState(() {
    //     _selectedIndex = 0;
    //     _onItemTapped(_selectedIndex)
    //   });
    // }
    super.dispose();
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
          const ProposalView(),
          const OrderView(),
          const InvoiceView(),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
