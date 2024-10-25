import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class SubscriptionLabel extends StatelessWidget {
  final String text;
  const SubscriptionLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppImages.loadPng('subscription_label'),
          width: theme.dimensions.size.extraBig,
        ),

        Text(
          text,
          style: theme.typography.regular.copyWith(
            color: theme.colors.text.onImage,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
