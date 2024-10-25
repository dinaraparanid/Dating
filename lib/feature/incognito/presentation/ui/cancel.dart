import 'package:dating/core/ui/theme/images.dart';
import 'package:dating/core/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class CancelIcon extends StatelessWidget {
  final void Function() onClose;
  const CancelIcon({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onClose,
        customBorder: const CircleBorder(),
        child: Image.asset(
          AppImages.loadPng('ic_cancel'),
          width: theme.dimensions.size.small,
          height: theme.dimensions.size.small,
        ),
      ),
    );
  }
}
