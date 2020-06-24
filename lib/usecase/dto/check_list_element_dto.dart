import 'package:ListMaker/domain/model/check_list_element.dart';

class CheckListElementDTO {
  final String id;
  final String japanese;
  final String english;

  CheckListElementDTO(CheckListElement element)
      : id = element.id.value,
        japanese = element.japanese,
        english = element.english;
}
