import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/domain/service/check_list_domain_service.dart';
import 'package:ListMaker/infra/repository/web_storage_check_list_repository.dart';

class CheckListService extends CheckListDomainService {
  CheckListService() : super(WebStorageCheckListRepository());

  @override
  void addCheckList(CheckList checkList) {
    // TODO: implement addCheckList
  }

  @override
  void deleteCheckList(CheckList checkList) {
    // TODO: implement deleteCheckList
  }

  @override
  CheckList findCheckListById() {
    // TODO: implement findCheckListById
    throw UnimplementedError();
  }

  @override
  List<CheckList> getAllCheckList() {
    // TODO: implement getAllCheckList
    throw UnimplementedError();
  }

  @override
  void updateCheckList(CheckList checkList) {
    // TODO: implement updateCheckList
  }

}
