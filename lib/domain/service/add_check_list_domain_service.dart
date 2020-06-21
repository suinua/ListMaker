import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/domain/repository/check_list_repository.dart';

class AddCheckListDomainService {
  final CheckListRepository repository;

  AddCheckListDomainService(this.repository);

  void execute(CheckList checkList){
    assert(repository.findById(checkList.id) != null);

    repository.add(checkList);
  }
}