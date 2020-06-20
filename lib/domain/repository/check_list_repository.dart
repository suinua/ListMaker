
import '../model/check_list.dart';

abstract class CheckListRepository {
  CheckList findCheckListById();
  List<CheckList> getAllCheckList();
  void addCheckList(CheckList checkList);
  void deleteCheckList(CheckList checkList);
  void updateCheckList(CheckList checkList);
}