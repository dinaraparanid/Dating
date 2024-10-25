import 'package:dating/utils/functions/do_nothing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class IncognitoComponent extends Cubit<void> {
  IncognitoComponent() : super(null);

  void onBuyClick() => doNothing();
}