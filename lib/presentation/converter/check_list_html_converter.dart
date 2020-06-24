import 'dart:html';

import 'package:ListMaker/presentation/converter/check_list_element_html_converter.dart';
import 'package:ListMaker/usecase/dto/check_list_dto.dart';

class CheckListHtmlConverter {
  static HtmlElement execute(CheckListDTO dto) {
    var group = DivElement()..className = 'checkList';
    var titleHtml = DivElement()
      ..className = 'title'
      ..id = dto.id;
    var titleTextHtml = ParagraphElement()
      ..className = 'text'
      ..text = dto.title;
    titleHtml.insertAdjacentElement('beforeend', titleTextHtml);
    group.insertAdjacentElement('beforeend', titleHtml);

    var elementsHtml = DivElement()..className = 'elements';

    dto.elements.forEach((element) => elementsHtml.insertAdjacentElement(
        'beforeend', CheckListElementHtmlConverter.execute(element)));

    group.insertAdjacentElement('beforeend', elementsHtml);

    return group;
  }
}
