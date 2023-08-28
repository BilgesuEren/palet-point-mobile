import 'package:flutter/material.dart';

class TopAppBarLeft extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;

  const TopAppBarLeft({ 
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
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
            icon,
            color: Theme.of(context).colorScheme.onSecondary,
            ),
          onPressed: () {
          },
        ),
        
      ],
    );
  }
}