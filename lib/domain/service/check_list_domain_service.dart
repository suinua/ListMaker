import '../model/check_list.dart';
import '../repository/check_list_repository.dart';

abstract class CheckListDomainService {
  final CheckListRepository repository;

  CheckListDomainService(this.repository);

  CheckList findCheckListById();
  List<CheckList> getAllCheckList();
  void addCheckList(CheckList checkList);
  void deleteCheckList(CheckList checkList);
  void updateCheckList(CheckList checkList);
}