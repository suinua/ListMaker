import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/infra/repository/json_adapter/check_list_element_json_adapter.dart';


class CheckListJsonAdapter {
  static CheckList decode(Map<String, dynamic> json) {
    return CheckList(
        id: CheckListId(json['id']),
        title: json['title'],
        elements: List<Map>.from(json['elements'])
            .map((e) => Map<String, dynamic>.from(e))
            .map(CheckListElementJsonAdapter.decode)
            .toList());
  }

  static Map<String, dynamic> encode(CheckList checkList) {
    return <String, dynamic>{
      'id': checkList.id.value,
      'title': checkList.title,
      'elements': checkList.elements.map(CheckListElementJsonAdapter.encode).toList()
    };
  }
}
