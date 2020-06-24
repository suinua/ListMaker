import 'dart:html';

import 'package:ListMaker/usecase/dto/check_list_element_dto.dart';


class CheckListElementHtmlConverter {
  static HtmlElement execute(CheckListElementDTO dto){
    var elementHtml = DivElement()
      ..className = 'element'
      ..id = dto.id;

    var japaneseTextHtml = ParagraphElement()..text = dto.japanese;
    var englishTextHtml = ParagraphElement()..text = dto.english;
    var deleteHtml = IFrameElement()..className = 'fas fa-minus-square';
    elementHtml.insertAdjacentElement('beforeend', japaneseTextHtml);
    elementHtml.insertAdjacentElement('beforeend', englishTextHtml);
    elementHtml.insertAdjacentElement('beforeend', deleteHtml);

    return elementHtml;
  }
}