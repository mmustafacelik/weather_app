// ignore_for_file: public_member_api_docs

import "package:equatable/equatable.dart";

///Tabbar event
abstract class TabEvent extends Equatable {
  const TabEvent();

  @override
  List<Object> get props => <Object>[];
}

class TabSelected extends TabEvent {
  const TabSelected(this.index);
  final int index;

  @override
  List<Object> get props => <Object>[index];
}
