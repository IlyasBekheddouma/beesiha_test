import 'package:auto_route/auto_route.dart';
import 'package:beesiha_test/domain/entities/character.dart';
import 'package:beesiha_test/presentation/resources/app_text_styles.dart';
import 'package:beesiha_test/presentation/routes/router.gr.dart';
import 'package:beesiha_test/presentation/utils/ext1.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character, this.usedInFavorites=false});
  final Character character;
  final bool usedInFavorites;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  context.router.push(
                    DetailsScreenRoute(
                      character: character,
                    ),
                  );
                },
                child: CachedNetworkImage(
                  imageUrl: character.imageUrl,fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
                child: GestureDetector(
                  onTap: ()=> usedInFavorites?removeFromFavorites(character.id):openUrl(character.wikiUrl),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(usedInFavorites?EvaIcons.close:EvaIcons.link,color: Colors.white,size: 24,),
                  ),
                ),
            )
          ],
        ),),
        const SizedBox(height: 6,),
        Text('${character.name}\n',style: AppTextStyles.ts1,maxLines: 2,overflow: TextOverflow.ellipsis,)
      ],
    );
  }
}