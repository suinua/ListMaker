import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

import '../aggregate_root.dart';
import 'check_list_element.dart';

class CheckList extends AggregateRoot {
  final CheckListId id;
  final title;
  List<CheckListElement> elements;

  CheckList({@required this.id, @required this.title, @required this.elements})
      : assert(id != null),
        assert(title != null),
        assert(elements != null);

  CheckList.asNew({@required this.title})
      : id = CheckListId.asNew(),
        elements = [];

  void addCheckListElement(CheckListElement checkListElement) =>
      elements.add(checkListElement);

  void removeCheckListElement(CheckListElement checkListElement) =>
      elements.remove(checkListElement);

  void updateCheckListElement(CheckListElement checkListElement) {
    elements.map((CheckListElement e) => (CheckListElement e) {
          e.japanese = checkListElement.japanese;
          e.english = checkListElement.english;
        });
  }
}

class CheckListId {
  final String value;

  CheckListId(this.value) : assert(value != null);

  CheckListId.asNew() : value = Uuid().v4();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    if (other is CheckListId) {
      return value == other.value;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => value.hashCode;
}
