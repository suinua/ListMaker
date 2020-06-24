import 'dart:html';

import 'package:ListMaker/domain/model/check_list_element.dart';

class CheckListElementUsecaseDTO {
  final String id;
  final String japanese;
  final String english;

  CheckListElementUsecaseDTO(CheckListElement element)
      : id = element.id.value,
        japanese = element.japanese,
        english = element.english;

  HtmlElement asHtmlElement() {
    var elementHtml = DivElement()
      ..className = 'element'
      ..id = id;

    var japaneseTextHtml = ParagraphElement()..text = japanese;
    var englishTextHtml = ParagraphElement()..text = english;
    var deleteHtml = IFrameElement()..className = 'fas fa-minus-square';
    elementHtml.insertAdjacentElement('beforeend', japaneseTextHtml);
    elementHtml.insertAdjacentElement('beforeend', englishTextHtml);
    elementHtml.insertAdjacentElement('beforeend', deleteHtml);

    return elementHtml;
  }
}
