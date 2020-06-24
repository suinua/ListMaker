import 'package:ListMaker/domain/model/check_list_element.dart';

class CheckListElementJsonAdapter {
  static CheckListElement decode(Map<String, dynamic> json) {
    return CheckListElement(
        id: CheckListElementId(json['id']),
        japanese: json['japanese'],
        english: json['english']);
  }

  static Map<String, dynamic> encode(CheckListElement element) {
    return <String, dynamic>{
      'id': element.id.value,
      'japanese': element.japanese,
      'english': element.english,
    };
  }
}
