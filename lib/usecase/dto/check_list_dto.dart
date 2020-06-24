import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/usecase/dto/check_list_element_dto.dart';

class CheckListDTO {
  final String id;
  final String title;
  final List<CheckListElementDTO> elements;

  CheckListDTO(CheckList checkList)
      : id = checkList.id.value,
        title = checkList.title,
        elements = checkList.elements
            .map((e) => CheckListElementDTO(e))
            .toList();
}
