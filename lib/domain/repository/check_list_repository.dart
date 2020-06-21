
import '../model/check_list.dart';

abstract class CheckListRepository {
  CheckList findById(CheckListId checkListId);
  List<CheckList> getAll();
  void add(CheckList checkList);
  void delete(CheckList checkList);
  void update(CheckList checkList);
}