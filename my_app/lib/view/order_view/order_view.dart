import 'package:flutter/material.dart';
import 'package:my_app/view/order_view/order_detail.dart';
import '../widget/index_list_tile.dart';

class OrderView extends StatelessWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => IndexListTile(
        title: 'Headline',
        subtitle: 'Subtitle',
        svgPath: 'assets/alert.svg',
        trailing: const Icon(
          Icons.shape_line
          ),
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => OrderDetail()));
        },
      ),
    );
  }
}
