import 'package:beesiha_test/presentation/common/base_status/base_status.dart';
import 'package:beesiha_test/presentation/feature/home/characters/ui/character_item.dart';
import 'package:beesiha_test/presentation/resources/app_text_styles.dart';
import 'package:beesiha_test/presentation/widgets/app_pagination_wrapper.dart';
import 'package:beesiha_test/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/get_characters_providers.dart';

class CharactersBody extends StatelessWidget {
  const CharactersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Latest releases just for you...',style: AppTextStyles.ts3,),
        ),
        Expanded(child: Consumer<GetCharactersProviders>(builder: (context, state, child) {

          return AppPaginationWrapper(
            onLoadMore: state.get,
            showPaginationLoader: state.status.isLazyLoading,
            child: state.status.maybeWhen(
              loading: () {
                 return GridView.builder(
                   physics: const NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                     childAspectRatio: 0.7,
                     crossAxisCount: 2,
                     crossAxisSpacing: 12,
                     mainAxisSpacing: 12,
                   ),
                   itemCount: 10,
                   itemBuilder: (context, index) => Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Expanded(child: ShimmerBox()),
                       SizedBox(
                         height: 12,
                       ),
                       SizedBox(
                         height: 12,
                         width: double.infinity,
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
                 );
               },
              orElse: () {
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
                  itemCount: state.list.length,
                  itemBuilder: (context, index) => CharacterItem(character: state.list[index],),
                );
              },
            ),
          );

        },)),
      ],
    );
  }
}