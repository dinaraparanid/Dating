import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/feature/root/presentation/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.create();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => theme)
      ],
      child: MaterialApp(
        color: theme.colors.background.primary,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const RootScreen(),
      ),
    );
  }
}