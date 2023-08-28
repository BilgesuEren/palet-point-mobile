import 'package:flutter/material.dart';

import 'widget/index_list_tile.dart';

class Home extends StatelessWidget {
const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => 
        IndexListTile(
          title: 'Headline',
          subtitle: 'Subtitle',
          svgPath: 'assets/alert.svg',
          onTap: () {
            Navigator.pushNamed(context, '/detail');
          },
        ),
    );
  }
}