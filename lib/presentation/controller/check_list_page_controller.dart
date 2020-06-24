import 'dart:html';

import 'package:ListMaker/usecase/service/check_list_usecase_service.dart';

class CheckListPageController {
  final CheckListUsecaseService _service;

  CheckListPageController() : _service = CheckListUsecaseService() {
    querySelector('#addCheckList').onClick.listen((e) => addNewCheckList);
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

  void addNewCheckList() {
    var title = getNewCheckListName();
    _service.add(title);

    DivElement checkListArea = querySelector('#CheckListArea');

    var checkListHtmlElement = DivElement();
    checkListHtmlElement.innerHtml = title;

    checkListArea.insertAdjacentElement(
        'beforeend', checkListHtmlElement);
  }
}