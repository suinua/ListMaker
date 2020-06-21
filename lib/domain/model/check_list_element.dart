import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

import '../entity.dart';

class CheckListElement extends Entity {
  final CheckListElementId id;
  String japanese;
  String english;

  CheckListElement(
      {@required this.id, @required this.japanese, @required this.english})
      : assert(id != null),
        assert(japanese != null),
        assert(english != null);

  CheckListElement.asNew({@required this.japanese, @required this.english})
      : id = CheckListElementId.asNew();
}

class CheckListElementId {
  final String value;

  CheckListElementId(this.value) : assert(value != null);

  CheckListElementId.asNew() : value = Uuid().v4();

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
