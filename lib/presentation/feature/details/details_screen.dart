import 'package:beesiha_test/domain/entities/character.dart';
import 'package:beesiha_test/domain/preferences/user_preferences.dart';
import 'package:beesiha_test/injection/injector.dart';
import 'package:beesiha_test/presentation/feature/details/providers/get_comics_providers.dart';
import 'package:beesiha_test/presentation/resources/app_colors.dart';
import 'package:beesiha_test/presentation/resources/app_text_styles.dart';
import 'package:beesiha_test/presentation/utils/ext1.dart';
import 'package:beesiha_test/presentation/widgets/shimmer_box.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.character});
  final Character character;

  @override
  Widget build(BuildContext context) {
    Provider.of<GetComicsProviders>(context,listen: false).get(character.id);
    return Material(
      color: AppColors.kc1,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [

          SizedBox(
            height: 250,
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: character.imageUrl, fit: BoxFit.fitWidth,
            ),
          ),

          const SizedBox(height: 16,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(child: Text(character.name,style: AppTextStyles.ts4,overflow: TextOverflow.ellipsis,)),
                GestureDetector(
                  onTap: () {

                    if(checkIfIsInFavorites(character.id)) {
                      removeFromFavorites(character.id);
                    } else {
                      addToFavorites(character.id);
                    }
                  },
                  child:PreferenceBuilder<List<String>>(
                      preference: injector.get<UserPreferences>().getFavorites(),
                      builder: (BuildContext context, val) {
                        return Icon(checkIfIsInFavorites(character.id)?EvaIcons.heart:EvaIcons.heartOutline, color: Colors.red, size: 28,);
                      }
                  )
                ),
              ],
            ),
          ),

          const SizedBox(height: 8,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(character.description,style: AppTextStyles.ts2,),
          ),

          const SizedBox(height: 16,),

          Consumer<GetComicsProviders>(builder: (context, state, child) {

            return state.status.maybeWhen(
              loading: () {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        height: 16,
                        width: 70,
                        child: ShimmerBox(),
                      ),
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    ...List.generate(6, (index) {
                      return Container(
                        height: 120,
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [

                            const SizedBox(
                              width: 100,
                              child: ShimmerBox(),
                            ),

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [

                                    SizedBox(
                                      height: 12,
                                      width: 220,
                                      child: ShimmerBox(),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    SizedBox(
                                      height: 12,
                                      width: 84,
                                      child: ShimmerBox(),
                                    ),

                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      );

                    }).toList(),

                  ],
                );
              },
              orElse: () {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      if(state.list.isNotEmpty) const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Comics',style: AppTextStyles.ts3,overflow: TextOverflow.ellipsis,),
                      ),

                      const SizedBox(height: 8,),

                      ...List.generate(state.list.length, (index) {
                        final comic =state.list[index];
                        return Container(
                          height: 120,
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [

                              SizedBox(
                                width: 100,
                                child: CachedNetworkImage(
                                  imageUrl: comic.imageUrl,fit: BoxFit.cover,
                                ),
                              ),

                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(comic.title,style: AppTextStyles.ts1,),
                                      GestureDetector(
                                        onTap: ()=> openUrl(comic.wikiUrl),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          child: Text(comic.wikiUrl,style: AppTextStyles.ts5,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        );

                      }).toList(),

                    ]
                );
                },
            );

          },)

        ],
      )
    );
  }
}