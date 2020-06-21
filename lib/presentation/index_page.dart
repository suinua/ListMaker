import 'dart:html';

import 'package:ListMaker/application/service/check_list_service.dart';
import 'package:ListMaker/domain/model/check_list.dart';


//とりあえず実装
class IndexPage {
  final CheckListService _service;

  IndexPage() : _service = CheckListService() {
    querySelector('#addCheckList').onClick.listen(addCheckList);
  }

  void resetNewCheckListTitleInput() {
    InputElement newCheckListTitleInputElement =
        querySelector('#NewCheckListTitleInput');
    newCheckListTitleInputElement.text = '';
  }

  String getNewCheckListName() {
    InputElement newCheckListTitleInputElement =
        querySelector('#NewCheckListTitleInput');
    return newCheckListTitleInputElement.value;
  }

  void addCheckList(Event event) {
    var title = getNewCheckListName();
    _service.add(CheckList.asNew(title: title));

    DivElement checkListArea = querySelector('#CheckListArea');

    var checkListHtmlElement = DivElement();
    checkListHtmlElement.innerHtml = title;

    checkListArea.insertAdjacentElement(
        'beforeend', checkListHtmlElement);
  }
}
