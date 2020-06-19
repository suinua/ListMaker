import '../model/CheckList.dart';
import '../repository/CheckListRepository.dart';

abstract class CheckListDomainService {
  final CheckListRepository repository;

  CheckListDomainService(this.repository);

  void add(CheckList checkList);
  void delete(CheckList checkList);
  void update(CheckList checkList);
}