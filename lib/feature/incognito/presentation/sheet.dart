import 'package:dating/feature/incognito/presentation/ui/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/ui/theme/theme.dart';

void showIncognitoBottomSheet({
  required BuildContext context,
  required void Function() onClose,
  required void Function() onCancel,
}) {
  final theme = context.read<AppTheme>();

  showModalBottomSheet(
    context: context,
    backgroundColor: theme.colors.background.incognito,
    shape: const RoundedRectangleBorder(),
    builder: (context) => IncognitoBottomSheetContent(onClose: onClose),
  ).then((_) { onCancel(); });
}