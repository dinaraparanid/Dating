import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class SubscriptionUi extends StatelessWidget {
  final int incognitoDaysCount;
  final String price;
  final Widget? topLabel;

  const SubscriptionUi({
    super.key,
    required this.incognitoDaysCount,
    required this.price,
    this.topLabel,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();

    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: IntrinsicWidth(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(top: theme.dimensions.padding.medium),
              child: Content(theme),
            ),

            topLabel,
          ].whereType<Widget>().toList(growable: false),
        ),
      ),
    );
  }

  Widget Content(AppTheme theme) => Container(
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(
      vertical: theme.dimensions.padding.extraMedium,
      horizontal: theme.dimensions.padding.large,
    ),
    decoration: BoxDecoration(
      color: theme.colors.background.content,
      border: Border.all(
        color: theme.colors.border.primary,
        width: theme.dimensions.size.line.extraSmall,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(theme.dimensions.radius.extraSmall),
      ),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              incognitoDaysCount.toString(),
              style: theme.typography.body.copyWith(
                color: theme.colors.text.primary,
                fontWeight: FontWeight.w400,
              ),
            ),

            SizedBox(width: theme.dimensions.padding.extraSmall),

            Image.asset(
              AppImages.loadPng('incognito_yellow'),
              width: theme.dimensions.size.medium,
            ),
          ],
        ),

        SizedBox(height: theme.dimensions.padding.medium),

        Text(
          price,
          style: theme.typography.body.copyWith(
            color: theme.colors.text.primary,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}