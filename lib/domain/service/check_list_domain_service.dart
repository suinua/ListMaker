import '../model/check_list.dart';
import '../repository/check_list_repository.dart';

abstract class CheckListDomainService {
  final CheckListRepository repository;

  CheckListDomainService(this.repository);

  void add(CheckList checkList);
  void delete(CheckList checkList);
  void update(CheckList checkList);
}