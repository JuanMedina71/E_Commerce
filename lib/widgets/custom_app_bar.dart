import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

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
                'DISCOVER',
                style: Theme.of(context).textTheme.displaySmall,
                ),
            )
          
          
          ],
          ),
          actions: [
            IconButton(
              onPressed: (){
                //TODO: Implementar accion con bloc
              }, 
              icon: Icon(Icons.message_outlined, color: Theme.of(context).primaryColor)
            ),
            IconButton(
              onPressed: (){
                //TODO:  Implementar acciones con Bloc
                },
              icon: Icon(Icons.account_circle_outlined, color: Theme.of(context).primaryColor)
            ),

            
          ],
   ));
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}
