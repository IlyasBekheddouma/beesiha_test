import 'package:auto_route/auto_route.dart';
import 'package:beesiha_test/presentation/feature/home/ui/home_bottom_navigation_bar_item.dart';
import 'package:beesiha_test/presentation/resources/app_colors.dart';
import 'package:beesiha_test/presentation/routes/router.gr.dart';
import 'package:beesiha_test/presentation/utils/ext1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'characters/providers/get_characters_providers.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<GetCharactersProviders>(context,listen: false).get();
    return WillPopScope(
      onWillPop: onWillPopExit,
      child: Material(
          color: AppColors.kc1,
        child: SafeArea(
          child: AutoTabsRouter.builder(
            routes: const [
              CharactersBodyRoute(),
              FavoritesBodyRoute(),
            ],
            builder: (context, children, tabsRouter) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: children.elementAt(tabsRouter.activeIndex)),
                  SizedBox(
                    height: 58,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 32,
                        ),
                        ...List.generate(
                            2,
                                (index) => HomeBottomNavigationBarItem(
                                id: index,
                                isSelcted: index == tabsRouter.activeIndex,
                                onSelcted: () {
                                  tabsRouter.setActiveIndex(index);
                                })),
                        const SizedBox(
                          width: 32,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
