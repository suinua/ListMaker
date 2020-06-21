import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/domain/repository/check_list_repository.dart';

class WebStorageCheckListRepository extends CheckListRepository{
  @override
  void add(CheckList checkList) {
    // TODO: implement add
  }

  @override
  void delete(CheckList checkList) {
    // TODO: implement delete
  }

  @override
  CheckList findById(CheckListId checkListId) {
    // TODO: implement findById
    throw UnimplementedError();
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