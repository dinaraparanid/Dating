import 'package:dating/feature/incognito/presentation/ui/subscription/item.dart';
import 'package:dating/feature/incognito/presentation/ui/subscription/label.dart';
import 'package:flutter/cupertino.dart';

final class SubscriptionRow extends StatelessWidget {
  const SubscriptionRow({super.key});

  @override
  Widget build(BuildContext context) => const Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Flexible(
        child: SubscriptionUi(
            incognitoDaysCount: 1,
            price: '99 ₽'
        ),
      ),

      Flexible(
        child: SubscriptionUi(
          incognitoDaysCount: 3,
          price: '199 ₽',
          topLabel: SubscriptionLabel(text: 'Хит'),
        ),
      ),

      Flexible(
        child: SubscriptionUi(
          incognitoDaysCount: 7,
          price: '399 ₽',
          topLabel: SubscriptionLabel(text: '-42%'),
        ),
      ),
    ],
  );
}
