import 'dart:html';

import 'package:ListMaker/usecase/service/check_list_usecase_service.dart';

class CheckListPageController {
  final CheckListUsecaseService _service;

  CheckListPageController() : _service = CheckListUsecaseService() {
    querySelector('#addCheckList').onClick.listen(addNewCheckList);
  }

  void resetNewCheckListTitleInput() {
    InputElement newCheckListTitleInputElement =
        querySelector('#newCheckListTitleInput');
    newCheckListTitleInputElement.text = '';
  }

  String getNewCheckListName() {
    InputElement newCheckListTitleInputElement =
        querySelector('#newCheckListTitleInput');
    return newCheckListTitleInputElement.value;
  }

  void addNewCheckList(Event event) {
    var title = getNewCheckListName();
    var newCheckList = _service.add(title);

    DivElement checkListArea = querySelector('#checkListArea');

    checkListArea.insertAdjacentElement(
        'beforeend', newCheckList.asHtmlElement());
  }
}
