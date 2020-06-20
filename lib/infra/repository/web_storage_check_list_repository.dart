import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/domain/repository/check_list_repository.dart';

class WebStorageCheckListRepository extends CheckListRepository{
  @override
  void addCheckList(CheckList checkList) {
    // TODO: implement addCheckList
  }

  @override
  void deleteCheckList(CheckList checkList) {
    // TODO: implement deleteCheckList
  }

  @override
  CheckList findCheckListById() {
    // TODO: implement findCheckListById
    throw UnimplementedError();
  }

  @override
  List<CheckList> getAllCheckList() {
    // TODO: implement getAllCheckList
    throw UnimplementedError();
  }

  @override
  void updateCheckList(CheckList checkList) {
    // TODO: implement updateCheckList
  }

}