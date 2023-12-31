import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widget/index_list_tile.dart';
import 'counter.dart';
import 'proposal_detail.dart';

class ProposalView extends ConsumerStatefulWidget {
  const ProposalView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProposalState();
}

class _ProposalState extends ConsumerState<ProposalView> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => IndexListTile(
        title: 'Headline',
        subtitle: 'Subtitle',
        svgPath: 'assets/alert.svg',
        // trailing: const Counter(),
        onTap: () {
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>  ProposalDetail())
          );
        },
      ),
    );
  }
}

// class Proposal extends StatelessWidget {
//   const Proposal({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 4,
//       itemBuilder: (context, index) => IndexListTile(
//         title: 'Headline',
//         subtitle: 'Subtitle',
//         svgPath: 'assets/alert.svg',
//         trailing: const Counter(),
//         onTap: () {
//           Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) =>  ProposalDetail())
//           );
//         },
//       ),
//     );
//   }
// }
