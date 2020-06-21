import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/infra/repository/web_storage_check_list_repository.dart';
import 'package:ListMaker/infra/service/add_check_list_service.dart';

class CheckListService {
  WebStorageCheckListRepository _repository;
  AddCheckListService _addCheckListService;

  CheckListService() {
    _repository = WebStorageCheckListRepository();
    _addCheckListService = AddCheckListService(_repository);
  }

  void add(CheckList checkList) {
    _addCheckListService.execute(checkList);
  }

  void delete(CheckList checkList) {
    _repository.delete(checkList);
  }

  CheckList findById(CheckListId checkListId) {
    return _repository.findById(checkListId);
  }

  List<CheckList> getAll() {
    return _repository.getAll();
  }

  void update(CheckList checkList) {
    _repository.update(checkList);
  }
}
