import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hasActions;

  const CustomAppBar({super.key, required this.title, this.hasActions = true});
  

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Expanded(child: Image.asset('assets/logo.png', height: 50)),
            Expanded(
              flex: 2,
              child: Text(
                title,
                style: Theme.of(context).textTheme.displaySmall,
                ),
            )
          
          
          ],
          ),
          actions: 
            hasActions ? 
          [
            IconButton(
              onPressed: (){
              }, 
              icon: Icon(Icons.message_outlined, color: Theme.of(context).primaryColor)
            ),
            IconButton(
              onPressed: () => context.push('/profile'),
             icon: Icon(Icons.account_circle_outlined, color: Theme.of(context).primaryColor)
            ),

  
          ] : null,
   ));
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
