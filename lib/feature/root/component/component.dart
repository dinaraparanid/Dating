import 'package:dating/feature/root/component/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

export 'event.dart';
export 'state.dart';

final class RootComponent extends Cubit<RootState> {
  RootComponent() : super(RootState.initial());

  void onTabClick(Tabs tab) => emit(RootState(selectedTab: tab));
}
