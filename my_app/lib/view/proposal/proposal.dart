import 'package:flutter/material.dart';

import '../widget/index_list_tile.dart';
import 'counter.dart';
import 'proposal_detail.dart';

class Proposal extends StatelessWidget {
const Proposal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => 
        IndexListTile(
          title: 'Headline',
          subtitle: 'Subtitle',
          svgPath: 'assets/alert.svg',
          trailing: const Counter(),
          onTap: () {
           MaterialPageRoute(builder: (context) => const ProposalDetail());
          },
        ),
    );
  }
}