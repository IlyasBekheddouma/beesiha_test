import 'package:beesiha_test/domain/preferences/user_preferences.dart';
import 'package:beesiha_test/injection/injector.dart';
import 'package:beesiha_test/presentation/feature/home/characters/providers/get_characters_providers.dart';
import 'package:beesiha_test/presentation/feature/home/characters/ui/character_item.dart';
import 'package:beesiha_test/presentation/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('My favorites',style: AppTextStyles.ts3,),
        ),
        Expanded(
          child: PreferenceBuilder<List<String>>(
              preference: injector.get<UserPreferences>().getFavorites(),
              builder: (BuildContext context, val) {
                var list=Provider.of<GetCharactersProviders>(context,listen: false).list.where((element) => val.contains(element.id.toString())).toList();

                if(list.isEmpty) {
                  return const Center(
                    child: Text("You don't have any favorite",style: AppTextStyles.ts1,),
                  );
                }
                return GridView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, index) => CharacterItem(character: list[index], usedInFavorites: true),
                );
              }
          ),
        ),
      ],
    );
  }
}