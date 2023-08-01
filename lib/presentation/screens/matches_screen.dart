import 'package:e_commerce/widgets/custom_app_bar.dart';
import 'package:e_commerce/widgets/user_image_small.dart';
import 'package:flutter/material.dart';

import '../../models/user_match_model.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final inactiveMatches = UserMatch.matches.where((match) => match.userId == 1 && match.chat!.isEmpty).toList();
    final activeMatches = UserMatch.matches.where((match) => match.userId == 1 && match.chat!.isNotEmpty).toList();


    return  Scaffold(
      appBar: const CustomAppBar(title: 'MATCHES'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your Likes', style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 130, 
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: inactiveMatches.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    UserImageSmall(
                      height: 100,
                      width: 90,
                      url: inactiveMatches[index].matchedUser.imageUrls[0],
                      ),
                      Text(inactiveMatches[index].matchedUser.name, style: Theme.of(context).textTheme.bodyMedium)
                  ],
                );
              },
              ),
              ),
              const SizedBox(height: 20),
              Text('Chats Activos', style: Theme.of(context).textTheme.headlineSmall,),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: activeMatches.length,
                itemBuilder: (context, index) {
                  return Row(children: [
                    UserImageSmall(
                      height: 70,
                      width: 70,
                      url: activeMatches[index].matchedUser.imageUrls[0]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(activeMatches[index].matchedUser.name, style: Theme.of(context).textTheme.bodyLarge,),
                          const SizedBox(height: 8),
                          Text(activeMatches[index].chat![0].messages[0].message, style: Theme.of(context).textTheme.bodyMedium,),
                          Text(activeMatches[index].chat![0].messages[0].timeString, style: Theme.of(context).textTheme.labelSmall,),
                        
                        ],
                      ),
                     

                  ],);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}