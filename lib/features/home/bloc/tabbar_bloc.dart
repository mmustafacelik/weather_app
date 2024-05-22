// tab_bloc.dart
// ignore_for_file: public_member_api_docs

import "package:bloc/bloc.dart";
import "package:weather_app/features/home/bloc/tabbar_events.dart";
import "package:weather_app/features/home/bloc/tabbar_state.dart";

class TabBloc extends Bloc<TabEvent, TabState> {
  TabBloc() : super(const TabState(selectedIndex: 0)) {
    on<TabSelected>((final TabSelected event, final Emitter<TabState> emit) {
      emit(TabState(selectedIndex: event.index));
    });
  }
}
