import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/feature/chats/presentation/screen.dart';
import 'package:dating/feature/root/component/component.dart';
import 'package:dating/feature/root/presentation/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();
    final strings = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => RootComponent(),
      child: BlocBuilder<RootComponent, RootState>(
        builder: (context, state) {
          final component = context.read<RootComponent>();

          return Scaffold(
            extendBody: true,
            backgroundColor: theme.colors.background.primary,
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: theme.colors.navBar.selected,
              unselectedItemColor: theme.colors.navBar.unselected,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: state.selectedTab.index,
              onTap: (index) => component.onTabClick(Tabs.values[index]),
              items: NavBarItems(
                theme: theme,
                state: state,
                strings: strings,
              ),
            ),
            body: Body(selectedTab: state.selectedTab),
          );
        },
      ),
    );
  }

  Widget Body({required Tabs selectedTab}) => switch (selectedTab) {
    Tabs.home => Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: const Text('TODO: Home screen'),
    ),

    Tabs.chat => const ChatsScreen(),

    Tabs.likes => Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: const Text('TODO: Likes screen'),
    ),

    Tabs.settings => Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: const Text('TODO: Settings screen'),
    ),
  };
}
