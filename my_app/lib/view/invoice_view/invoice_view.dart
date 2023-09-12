import 'package:flutter/material.dart';
import 'package:my_app/view/invoice_view/invoice_detail.dart';
import '../widget/index_list_tile.dart';

class InvoiceView extends StatelessWidget {
  const InvoiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (context, index) => IndexListTile(
            title: 'Headline',
            subtitle: 'Subtitle',
            svgPath: 'assets/alert.svg',
            trailing: const Icon(Icons.shape_line),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => InvoiceDetail()));
            },
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(20.0),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
