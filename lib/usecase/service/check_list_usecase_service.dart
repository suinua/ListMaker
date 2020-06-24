import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/infra/repository/web_storage_check_list_repository.dart';
import 'package:ListMaker/infra/service/add_check_list_service.dart';
import 'package:ListMaker/usecase/dto/check_list_usecase_dto.dart';

class CheckListUsecaseService {
  WebStorageCheckListRepository _repository;
  AddCheckListService _addCheckListService;

  CheckListUsecaseService() {
    _repository = WebStorageCheckListRepository();
    _addCheckListService = AddCheckListService(_repository);
  }

  CheckListUsecaseDTO add(String title) {
    var checkList = CheckList.asNew(title: title);
    _addCheckListService.execute(checkList);

    return CheckListUsecaseDTO(checkList);
  }

  void delete(CheckList checkList) {
    _repository.delete(checkList);
  }

  CheckListUsecaseDTO findById(CheckListId checkListId) {
    var checkList = _repository.findById(checkListId);
    return CheckListUsecaseDTO(checkList);
  }

  List<CheckListUsecaseDTO> getAll() {
    return _repository.getAll().map((e) => CheckListUsecaseDTO(e)).toList();
  }

  void update(CheckList checkList) {
    _repository.update(checkList);
  }
}
