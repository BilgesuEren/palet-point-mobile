import 'package:flutter/material.dart';

class TopAppBarCentered extends StatelessWidget {
    final String title;

  const TopAppBarCentered({ 
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).colorScheme.onSecondary,
          ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.onSecondary
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).colorScheme.onSecondary,
            ),
          onPressed: () {
          },
        ),
      ],
    );
  }
}