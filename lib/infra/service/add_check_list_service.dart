
import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/domain/repository/check_list_repository.dart';
import 'package:ListMaker/domain/service/add_check_list_domain_service.dart';

class AddCheckListService extends AddCheckListDomainService {
  AddCheckListService(CheckListRepository repository) : super(repository);

  @override
  void execute(CheckList checkList) {
    assert(repository.findById(checkList.id) == null);

    repository.add(checkList);
  }
}