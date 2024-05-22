// tab_state.dart
// ignore_for_file: public_member_api_docs

import "package:equatable/equatable.dart";

/// TabState
class TabState extends Equatable {
  const TabState({required this.selectedIndex});
  final int selectedIndex;

  @override
  List<Object> get props => <Object>[selectedIndex];
}
