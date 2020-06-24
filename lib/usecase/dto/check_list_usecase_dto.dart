import 'dart:html';
import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/usecase/dto/check_list_element_usecase_dto.dart';

class CheckListUsecaseDTO {
  final String id;
  final String title;
  final List<CheckListElementUsecaseDTO> checkListElements;

  CheckListUsecaseDTO(CheckList checkList)
      : id = checkList.id.value,
        title = checkList.title,
        checkListElements = checkList.elements
            .map((e) => CheckListElementUsecaseDTO(e))
            .toList();

  HtmlElement asHtmlElement() {
    var group = DivElement()..className = 'checkList';
    var titleHtml = DivElement()
      ..className = 'title'
      ..id = id;
    var titleTextHtml = ParagraphElement()
      ..className = 'text'
      ..text = title;
    titleHtml.insertAdjacentElement('beforeend', titleTextHtml);
    group.insertAdjacentElement('beforeend', titleHtml);

    var elementsHtml = DivElement()..className = 'elements';

    checkListElements.forEach((element) => elementsHtml.insertAdjacentElement(
        'beforeend', element.asHtmlElement()));

    return group;
  }
}
