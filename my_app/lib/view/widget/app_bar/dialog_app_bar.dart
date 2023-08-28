import 'package:flutter/material.dart';

class DialogAppBar extends StatelessWidget {
  final String title;

  const DialogAppBar({ 
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      leading: IconButton(
        icon: Icon(
          Icons.close,
          color: Theme.of(context).colorScheme.onBackground,
          ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.onBackground
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
          },
          child: Text(
            'Gonder',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground
            ),
          ),
        ),
      ],
    );
  }
}