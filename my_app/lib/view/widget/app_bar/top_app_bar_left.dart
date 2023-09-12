import 'package:flutter/material.dart';

class TopAppBarLeft extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;
  void Function() onPressed;

   TopAppBarLeft({ 
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
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
          onPressed();
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
            onPressed();
          },
        ),
        
      ],
    );
  }
}