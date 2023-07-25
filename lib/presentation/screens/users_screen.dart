import 'package:e_commerce/models/models.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/widgets.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = User.users[0];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Hero(
                    tag: 'user_image',
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(user.imageUrls[0]),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChoiceButton(
                          hasGradient: true,
                          size: BorderSide.strokeAlignInside,
                          height: 60,
                          width: 60,
                          color: Theme.of(context).primaryColor,
                          icon: Icons.clear_rounded,
                        ),
                        const ChoiceButton(
                          hasGradient: false,
                          size: BorderSide.strokeAlignInside,
                          height: 80,
                          width: 80,
                          color: Colors.white38,
                          icon: Icons.favorite_border_rounded,
                        ),
                        ChoiceButton(
                          hasGradient: true,
                          size: BorderSide.strokeAlignInside,
                          height: 60,
                          width: 60,
                          color: Theme.of(context).primaryColor,
                          icon: Icons.clear_rounded,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${user.name}, ${user.age}',
                    style: Theme.of(context).textTheme.displaySmall),
                Text('${user.jobTitle}',
                    style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Acerca de ${user.name}',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text('${user.bio}',
                    style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Intereses',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: 
                  user.intereses.map((intereses) => 
                  
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      margin: const EdgeInsets.only(
                        top: 5.0,
                        right: 5.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(colors: [
                        Theme.of(context).primaryColor,
                        Colors.pink
                      ])),
                      child: Text(intereses, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),),
                    ),).toList(),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
