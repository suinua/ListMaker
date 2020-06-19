import 'package:meta/meta.dart';

import '../Entity.dart';

class CheckListElement extends Entity {
  final CheckListElementId id;
  String japanese;
  String english;

  CheckListElement(
      {@required this.id, @required this.japanese, @required this.english})
      : assert(id != null),
        assert(japanese != null),
        assert(english != null);
}

class CheckListElementId {
  final String value;

  CheckListElementId(this.value) : assert(value != null);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    if (other is CheckListElementId) {
      return value == other.value;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => value.hashCode;
}
