import 'dart:html';

import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/domain/repository/check_list_repository.dart';
import 'package:ListMaker/infra/repository/json_adapter/check_list_json_adapter.dart';

class WebStorageCheckListRepository extends CheckListRepository {
  @override
  void add(CheckList checkList) {
    window.localStorage['check_list'] = CheckListJsonAdapter.encode(checkList).toString();
  }

  @override
  void delete(CheckList checkList) {
    // TODO: implement delete
  }

  @override
  CheckList findById(CheckListId checkListId) {
    return null;
  }

  @override
  List<CheckList> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  void update(CheckList checkList) {
    // TODO: implement update
  }
}