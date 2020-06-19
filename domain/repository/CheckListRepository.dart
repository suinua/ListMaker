import '../models/CheckList.dart';

abstract class CheckListRepository {
  void add(CheckList checkList);
  void delete(CheckList checkList);
  void update(CheckList checkList);
}