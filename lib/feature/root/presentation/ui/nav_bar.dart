import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/feature/root/component/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<BottomNavigationBarItem> NavBarItems({
  required AppTheme theme,
  required RootState state,
  required AppLocalizations strings,
}) => [
  _NavBarItem(
      iconFilename: 'ic_home',
    label: strings.tab_home,
      tab: Tabs.home,
      theme: theme,
      state: state,
  ),
  _NavBarItem(
    iconFilename: 'ic_chat',
    label: strings.tab_chats,
    tab: Tabs.chat,
    theme: theme,
    state: state,
  ),
  _NavBarItem(
    iconFilename: 'ic_like',
    label: strings.tab_likes,
    tab: Tabs.likes,
    theme: theme,
    state: state,
  ),
  _NavBarItem(
    iconFilename: 'ic_settings',
    label: strings.tab_settings,
    tab: Tabs.settings,
    theme: theme,
    state: state,
  ),
];

BottomNavigationBarItem _NavBarItem({
  required String iconFilename,
  required Tabs tab,
  required String label,
  required AppTheme theme,
  required RootState state,
}) => BottomNavigationBarItem(
  label: label,
  backgroundColor: theme.colors.navBar.background,
  icon: Image.asset(
    AppImages.loadPng(iconFilename),
    width: theme.dimensions.size.small,
    height: theme.dimensions.size.small,
    color: state.selectedTab == tab
      ? theme.colors.navBar.selected
      : theme.colors.navBar.unselected,
  )
);
