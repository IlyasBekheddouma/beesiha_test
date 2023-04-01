import 'package:beesiha_test/domain/entities/comic.dart';
import 'package:beesiha_test/domain/usecases/get_comics_usecase.dart';
import 'package:beesiha_test/presentation/common/base_status/base_status.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetComicsProviders extends ChangeNotifier {
  GetComicsProviders(this._getComicsUseCase,);
  final GetComicsUseCase _getComicsUseCase;
  BaseStatus status=const BaseStatus.initial();
  List<Comic> list=[];
  int currentId=0;

  void get(int id) {

    if(status.isLoading||status.isLazyLoading||currentId==id) return;
    status=const BaseStatus.loading();
    list.clear();

    _getComicsUseCase.call(id).then((value) {
      status=const BaseStatus.success();
      currentId=id;
      list.addAll(value);
      notifyListeners();
    });
  }
}