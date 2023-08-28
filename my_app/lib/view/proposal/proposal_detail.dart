import 'package:flutter/material.dart';
import '../widget/app_bar/top_app_bar_left.dart';

class ProposalDetail extends StatelessWidget {
  const ProposalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBarLeft(
        title: 'Teklif No: 1533',
        icon: Icons.chat_bubble_outline,
      ),
      body: Container(),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.primary),
            fixedSize: MaterialStateProperty.all<Size>(const Size(150, 30)),
          ),
          child: const Text('Teklif Gonder (0/3)'),
        )
      ],
    );
  }
}
