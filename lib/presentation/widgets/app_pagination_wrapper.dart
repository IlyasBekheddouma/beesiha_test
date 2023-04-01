import 'package:flutter/material.dart';
import 'app_loading_indicator.dart';

typedef RefreshCallback = Future<void> Function();

Future<void> empty() async {}

class AppPaginationWrapper extends StatelessWidget {
  const AppPaginationWrapper({
    Key? key,
    this.showPaginationLoader = false,
    required this.onLoadMore,
    required this.child,
  }) : super(key: key);

  /// Pass the boolean to show the loader while fetching more data.
  final bool showPaginationLoader;

  /// Function to call when scrolling reaches at the bottom part.
  final VoidCallback onLoadMore;

  /// Child must has a bounded widget, if you're using a listview
  /// or a gridview which has an infinite height, use `shrinkWrap: true`
  /// to make it bounded
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final customScrollView = CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              child,
              if (showPaginationLoader)
                const SafeArea(
                  child: AppLoadingIndicator(),
                ),
            ],
          ),
        ),
      ],
    );

    return NotificationListener(
      onNotification: (ScrollNotification scrollNotification) {
        final metrics = scrollNotification.metrics;

        if (metrics.pixels >= metrics.maxScrollExtent - 24) {
          onLoadMore();
        }
        return true;
      },
      child: customScrollView,
    );
  }
}
