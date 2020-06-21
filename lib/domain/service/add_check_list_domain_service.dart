import 'package:ListMaker/domain/model/check_list.dart';
import 'package:ListMaker/domain/repository/check_list_repository.dart';

abstract class AddCheckListDomainService {
  final CheckListRepository repository;

  AddCheckListDomainService(this.repository);

  void execute(CheckList checkList);
}