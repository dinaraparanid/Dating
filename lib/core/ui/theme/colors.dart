import 'package:flutter/cupertino.dart';

const _LightSilver = Color(0xFFD9D9D9);
const _Cultured = Color(0xFFF6F4F4);
const _RaisinBlack = Color(0xFF212020);
const _Onyx = Color(0xFF393737);
const _EerieBlack = Color(0xFF191818);
const _RoyalPurple = Color(0xFF7446AC);
const _Maize = Color(0xFFF2C94C);
const _PhilippineGray = Color(0xFF8D8D8D);
const _CetaceanBlue = Color(0xFF0D1333);
const _BlackShadows = Color(0xFFBCB3B3);
const _RoseGarnet = Color(0xFFAA044A);

@immutable
final class AppColors {
  final AppBackgroundColors background;
  final AppTextColors text;
  final AppButtonColors button;
  final AppNavBarColors navBar;
  final AppBorderColors border;

  const AppColors({
    required this.background,
    required this.text,
    required this.button,
    required this.navBar,
    required this.border,
  });

  factory AppColors.create() => AppColors(
    background: AppBackgroundColors._default(),
    text: AppTextColors._default(),
    button: AppButtonColors._default(),
    navBar: AppNavBarColors._default(),
    border: AppBorderColors._default(),
  );
}

@immutable
final class AppBackgroundColors {
  final Color primary;
  final Color content;
  final Color incognito;

  const AppBackgroundColors({
    required this.primary,
    required this.content,
    required this.incognito,
  });

  factory AppBackgroundColors._default() => const AppBackgroundColors(
    primary: _LightSilver,
    content: _RaisinBlack,
    incognito: _CetaceanBlue,
  );
}

@immutable
final class AppBorderColors {
  final Color primary;

  const AppBorderColors({
    required this.primary,
  });

  factory AppBorderColors._default() => const AppBorderColors(
    primary: _Onyx,
  );
}

@immutable
final class AppNavBarColors {
  final Color background;
  final Color selected;
  final Color unselected;

  const AppNavBarColors({
    required this.background,
    required this.selected,
    required this.unselected,
  });

  factory AppNavBarColors._default() => const AppNavBarColors(
    background: _EerieBlack,
    selected: _Maize,
    unselected: _RoyalPurple,
  );
}

@immutable
final class AppTextColors {
  final Color primary;
  final Color secondary;
  final Color onButton;

  const AppTextColors({
    required this.primary,
    required this.secondary,
    required this.onButton,
  });

  factory AppTextColors._default() => const AppTextColors(
    primary: _Cultured,
    secondary: _PhilippineGray,
    onButton: _BlackShadows,
  );
}

@immutable
final class AppButtonColors {
  final Color primary;

  const AppButtonColors({
    required this.primary,
  });

  factory AppButtonColors._default() => const AppButtonColors(
    primary: _RoseGarnet,
  );
}
