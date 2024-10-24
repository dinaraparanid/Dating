import 'package:dating/core/ui/theme/theme.dart';
import 'package:dating/feature/chats/component/component.dart';
import 'package:dating/feature/chats/component/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();

    return BlocProvider(
      create: (context) => ChatsComponent(),
      child: BlocBuilder<ChatsComponent, ChatsState>(
        builder: (context, state) {
          final onEvent = context.read<ChatsComponent>().add;

          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: theme.dimensions.padding.content),
            decoration: BoxDecoration(
              color: theme.colors.background.content,
              border: Border.all(
                color: theme.colors.border.primary,
                width: theme.dimensions.size.line.extraSmall,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(theme.dimensions.radius.extraSmall),
                topRight: Radius.circular(theme.dimensions.radius.extraSmall),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          );
        },
      ),
    );
  }
}
